import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  static final AppLocalStorage _instance = AppLocalStorage._internal();

  factory AppLocalStorage() {
    return _instance;
  }

  AppLocalStorage._internal();

  final _storage = GetStorage();

  // Save Data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Read Data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Remove Data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  // Clear all Data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
