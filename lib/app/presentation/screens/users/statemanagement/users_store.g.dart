// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UsersStore on _UsersStore, Store {
  late final _$futureUsersAtom =
      Atom(name: '_UsersStore.futureUsers', context: context);

  @override
  ObservableFuture<List<UsersEntities>?> get futureUsers {
    _$futureUsersAtom.reportRead();
    return super.futureUsers;
  }

  @override
  set futureUsers(ObservableFuture<List<UsersEntities>?> value) {
    _$futureUsersAtom.reportWrite(value, super.futureUsers, () {
      super.futureUsers = value;
    });
  }

  late final _$_UsersStoreActionController =
      ActionController(name: '_UsersStore', context: context);

  @override
  Future<dynamic> fetchUsers() {
    final _$actionInfo = _$_UsersStoreActionController.startAction(
        name: '_UsersStore.fetchUsers');
    try {
      return super.fetchUsers();
    } finally {
      _$_UsersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
futureUsers: ${futureUsers}
    ''';
  }
}
