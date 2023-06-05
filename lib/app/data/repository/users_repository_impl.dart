import 'package:jsonplaceholder/app/data/datasource/users_data_source.dart';
import 'package:jsonplaceholder/app/data/mappers/users_mappers.dart';
import 'package:jsonplaceholder/app/data/service/hive/hive.dart';
import 'package:jsonplaceholder/app/data/service/hive/hive_impl.dart';
import 'package:jsonplaceholder/app/domain/repository/users_repository.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class UsersRepositoryImpl implements UsersRepository {
  final HiveService hiveService;
  final UsersDataSource dataSource;
  final UserMapper mapper;

  UsersRepositoryImpl({
    required this.hiveService,
    required this.dataSource,
    required this.mapper,
  });

  @override
  Future<List<UsersEntities>> getUsers() {
    return dataSource.getUsers().then((entity) async {
      final list = mapper.map(entity);
      await hiveService.initBox("userEntity");
      await hiveService.create("list", list);
      final users = await hiveService.read("list") as List<UsersEntities>;
      return users;
    }).catchError((e) async{
      final list = await hiveService.read("list") ?? [];
      return list;
    });
  }
}
