import 'package:get/get.dart';
import 'package:resoce/data/db_local/_isare_local_db.dart';
import 'package:resoce/models/client.dart';

class NewContactController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await getDataClient();
  }

  Future getDataClient() async {
    var data = await LocalDb.getClient();
    if (data != null) {
      client.value = data;
    }
  }

  late Rx<Client> client = Client.empty().obs;
}
