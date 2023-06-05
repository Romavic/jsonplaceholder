import 'package:hive/hive.dart';
import 'package:jsonplaceholder/app/data/service/hive/hive.dart';

class HiveServiceImpl<T> extends HiveService<T> {
  late Box box;
  @override
  Future<Box> initBox(String name) async{
    box = await Hive.openBox(name);
    return box;
  }

  @override
  Future<void> create(String key, dynamic value) async {
    await box.put(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await box.delete(key);
  }

  @override
  Future<T?> read(String key) async {
    return box.get(key);
  }
}