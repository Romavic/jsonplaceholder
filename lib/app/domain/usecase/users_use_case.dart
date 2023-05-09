import 'package:jsonplaceholder/app/data/repository/users_repository.dart';
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
