import 'package:hive_flutter/adapters.dart';

class BaseHive {
  BaseHive._();

  static Future<void> addData<T>(
      {required String boxName, required String key, required T data}) async {
    final box = await Hive.openLazyBox(boxName);
    await box.put(key, data);
    await box.close();
  }

  static Future<T?> getData<T>(
      {required String boxName, required String key}) async {
    final box = await Hive.openLazyBox(boxName);
    final T? response = await box.get(key);
    await box.close();
    return response;
  }

}
