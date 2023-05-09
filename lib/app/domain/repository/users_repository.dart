import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

abstract class UsersRepository {
  Future<List<UsersEntities>> getUsers();
}
