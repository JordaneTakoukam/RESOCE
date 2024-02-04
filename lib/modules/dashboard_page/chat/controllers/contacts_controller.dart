// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:get/get.dart';
import 'package:resoce/data/db_local/_isare_local_db.dart';
import 'package:resoce/data/providers/app_provider.dart';
import 'package:resoce/models/contact.dart';
import 'package:resoce/modules/dashboard_page/chat/repositories/contacts_reppository.dart';

class ContactController extends GetxController {
  var repository = ContactListRepository();

  @override
  void onInit() async {
    super.onInit();

    await getContactList();
  }

  Future getContactList() async {
    // get contact list form local database
    List<Contact> listDbContact = await LocalDb.getContacts();
    contactList.value = List<Contact>.from(listDbContact);

    var client = await LocalDb.getClient();
    var companyId = client!.companyId;
    var token = await AppProvider().getTokenFromLocalStorage();

    var data = await repository.getContactList(
      companyId: companyId,
      token: token!,
    );

    if (data['data'] == null) {
      //
      print('not online');
    } else {
      // update contact list form api server
      List<Map<String, dynamic>> jsonDataList =
          List<Map<String, dynamic>>.from(data['data']['data']);

      List<Contact> contacts =
          jsonDataList.map((json) => Contact.fromJson(json)).toList();

      String currentId = client.idApi;

      List<Contact> filteredContacts =
          contacts.where((contact) => contact.idApi != currentId).toList();

      // passons les donnees au stage
      contactList.value = List<Contact>.from(filteredContacts);

      // save en local db
      await LocalDb.setContacts(filteredContacts);

      //
    }
  }

  RxList<Contact> contactList = <Contact>[].obs;
}
