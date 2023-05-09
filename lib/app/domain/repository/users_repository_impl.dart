import 'package:jsonplaceholder/app/data/datasource/users_data_source.dart';
import 'package:jsonplaceholder/app/data/mappers/users_mappers.dart';
import 'package:jsonplaceholder/app/data/repository/users_repository.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource dataSource;
  final UserMapper mapper;

  UsersRepositoryImpl({
    required this.dataSource,
    required this.mapper,
  });

  @override
  Future<List<UsersEntities>> getUsers() {
    return dataSource.getUsers().then((entity) {
      return mapper.map(entity);
    });
  }
}
