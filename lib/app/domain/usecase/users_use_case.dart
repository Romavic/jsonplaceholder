import 'package:jsonplaceholder/app/domain/repository/users_repository.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class UsersUseCase {
  final UsersRepository repository;

  UsersUseCase({
    required this.repository,
  });

  Future<List<UsersEntities>> getUsers() {
    return repository.getUsers();
  }
}
