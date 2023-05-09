import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';
import 'package:jsonplaceholder/app/domain/usecase/users_use_case.dart';
import 'package:mobx/mobx.dart';

part 'users_store.g.dart';

class UsersStore = _UsersStore with _$UsersStore;

abstract class _UsersStore with Store {
  final UsersUseCase useCase;

  _UsersStore({
    required this.useCase,
  });

  @observable
  ObservableFuture<List<UsersEntities>?> futureUsers = ObservableFuture.value(
    [],
  );

  @action
  Future fetchUsers() {
    return futureUsers = ObservableFuture(
      useCase.getUsers().then(
        (response) {
          return response;
        },
      ),
    );
  }

  bool usersIsNotEmpty(List<UsersEntities> users) {
    return users.isEmpty;
  }
}
