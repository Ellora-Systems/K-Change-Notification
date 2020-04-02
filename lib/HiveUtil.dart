import 'package:hive/hive.dart';

class HiveUtil {
  static var box;

  static init() {
    if (box == null) {
      box = Hive.openBox('app_name');
    }
  }

  static putValue(String _key, String _value) {
    box.put(_key, _value);
  }

  static dynamic getValue(String _key) {
    return box.get(_key);
  }
}
