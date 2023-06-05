import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:jsonplaceholder/app/data/datasource/users_data_source.dart';
import 'package:jsonplaceholder/app/data/datasource/users_data_source_impl.dart';
import 'package:jsonplaceholder/app/data/mappers/users_mappers.dart';
import 'package:jsonplaceholder/app/data/service/hive/hive.dart';
import 'package:jsonplaceholder/app/data/service/hive/hive_impl.dart';
import 'package:jsonplaceholder/app/domain/repository/users_repository.dart';
import 'package:jsonplaceholder/app/data/service/api/api.dart';
import 'package:jsonplaceholder/app/data/service/api/api_impl.dart';
import 'package:jsonplaceholder/app/data/repository/users_repository_impl.dart';
import 'package:jsonplaceholder/app/domain/usecase/users_use_case.dart';
import 'package:jsonplaceholder/app/navigation/name_routes.dart';
import 'package:jsonplaceholder/app/presentation/screens/users/statemanagement/users_store.dart';
import 'package:jsonplaceholder/app/presentation/screens/users/users_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind(
        (i) => Dio(BaseOptions(
          baseUrl: "https://jsonplaceholder.typicode.com/",
          connectTimeout: const Duration(seconds: 6),
          receiveTimeout: const Duration(seconds: 6),
          sendTimeout: const Duration(seconds: 6),
        )),
      ),
      Bind((i) => UserMapper()),
      Bind.singleton<Api>(
        (i) => ApiImpl(dio: i.get()),
      ),
      Bind.singleton<HiveService>(
        (i) => HiveServiceImpl(),
      ),
      Bind.factory<UsersDataSource>(
        (i) => UsersDataSourceImpl(api: i.get()),
      ),
      Bind.factory<UsersRepository>(
        (i) => UsersRepositoryImpl(
          hiveServiceImpl: i.get(),
          dataSource: i.get(),
          mapper: i.get(),
        ),
      ),
      Bind.factory((i) => UsersUseCase(repository: i.get())),
      Bind.lazySingleton((i) => UsersStore(useCase: i.get()))
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        initialRoute,
        child: (context, args) => const UsersScreen(),
      ),
    ];
  }
}
