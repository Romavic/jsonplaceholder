import 'package:jsonplaceholder/app/data/datasource/users_data_source.dart';
import 'package:jsonplaceholder/app/data/mappers/users_mappers.dart';
import 'package:jsonplaceholder/app/data/service/hive/hive_impl.dart';
import 'package:jsonplaceholder/app/domain/repository/users_repository.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class UsersRepositoryImpl implements UsersRepository {
  final HiveServiceImpl<List<UsersEntities>> hiveServiceImpl;
  final UsersDataSource dataSource;
  final UserMapper mapper;

  UsersRepositoryImpl({
    required this.hiveServiceImpl,
    required this.dataSource,
    required this.mapper,
  });

  @override
  Future<List<UsersEntities>> getUsers() {
    return dataSource.getUsers().then((entity) async {
      final list = mapper.map(entity);
      await hiveServiceImpl.initBox("userEntity");
      await hiveServiceImpl.create("list", list);
      return list;
    }).catchError((e) async{
      final list = await hiveServiceImpl.read("list") ?? [];
      return list;
    });
  }
}
