import 'package:resoce/data/db_local/_isare_local_db.dart';

class SplashScreenRepository {

  // verifier un user existe em local
  Future<bool> getExistingUserInLocal() async {
    dynamic existUser = await LocalDb.getClient();

    return existUser == null ? false : true;
  }
}
