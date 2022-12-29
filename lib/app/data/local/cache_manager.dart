import 'package:get_storage/get_storage.dart';
import 'package:product_checklist/app/utils/enums/cache_key.dart';

mixin CacheManager {
  Future<bool> saveCache(String? token, String? username) async {
    final box = GetStorage();
    await box.write(CacheKey.token.toString(), token);
    await box.write(CacheKey.username.toString(), username);
    return true;
  }

  String? getToken() {
    final box = GetStorage();
    return box.read(CacheKey.token.toString());
  }

  String? getName() {
    final box = GetStorage();
    return box.read(CacheKey.username.toString());
  }

  Future<void> removeCache() async {
    final box = GetStorage();
    await box.remove(CacheKey.token.toString());
    await box.remove(CacheKey.username.toString());
    await box.erase();
  }
}
