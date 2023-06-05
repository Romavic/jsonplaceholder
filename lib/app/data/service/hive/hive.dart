import 'package:hive/hive.dart';

abstract class HiveService<T> {
  Future<Box> initBox(String name);
  Future<void> create(String key, dynamic value);
  Future<T?> read(String key);
  Future<void> delete(String key);
}