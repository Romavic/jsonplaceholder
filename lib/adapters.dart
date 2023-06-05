import 'package:hive_flutter/adapters.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class HiveAdapters {
  static void init() {
    Hive.registerAdapter(UsersEntitiesAdapter());
    Hive.registerAdapter(AddressEntitiesAdapter());
    Hive.registerAdapter(GeoEntitiesAdapter());
    Hive.registerAdapter(CompanyEntitiesAdapter());
  }
}
