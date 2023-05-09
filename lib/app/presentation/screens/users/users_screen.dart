import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';
import 'package:jsonplaceholder/app/presentation/designsystem/adapters/user_adapter.dart';
import 'package:jsonplaceholder/app/presentation/screens/users/statemanagement/users_store.dart';
import 'package:mobx/mobx.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final store = Modular.get<UsersStore>();

  @override
  void initState() {
    store.fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Observer(
          builder: (_) {
            switch (store.futureUsers.status) {
              case FutureStatus.pending:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.amber,
                  ),
                );
              case FutureStatus.rejected:
                return const Center(
                  child: Text("Error to load data."),
                );
              case FutureStatus.fulfilled:
                return widgetStickerProducts(
                  store.futureUsers.value,
                );
            }
          },
        ),
      ),
    );
  }

  Widget widgetStickerProducts(List<UsersEntities>? users) {
    return store.usersIsNotEmpty(users!)
        ? const Center(
            child: Text("List empty"),
          )
        : ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: users.length,
            itemBuilder: (context, index) {
              return UserAdapter(
                userEntity: users[index],
              );
            },
          );
  }
}
