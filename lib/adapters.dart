import 'package:hive_flutter/adapters.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class HiveAdapters {
  static void init() {
    List<TypeAdapter> list = [
      UsersEntitiesAdapter(),
      AddressEntitiesAdapter(),
      GeoEntitiesAdapter(),
      CompanyEntitiesAdapter(),
    ];

    for (var adapter in list) {
      Hive.registerAdapter(adapter);
    }
  }
}
