import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_bloc_practice/schemas/storage_scheme.dart';

class StorageService {
  Future<String?> getLocalRegion() async {
    final storage = await SharedPreferences.getInstance();
    return storage.getString(StorageScheme.region);
  }

  Future<void> saveRegion({required String region}) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(StorageScheme.region, region);
  }
}
