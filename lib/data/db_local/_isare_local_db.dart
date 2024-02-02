import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resoce/models/client.dart';

class LocalDb {
  static late Isar isar;

// initialiser le stockage local
  static Future<void> initializeLocalDB() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ClientSchema], directory: dir.path);
  }

// suppriemr tous le stockage locales
  static Future<void> clearLocalDB() async {
    await isar.writeTxn(() async {
      await isar.clients.clear();
    });
  }

  // ************************ client
  //
  // ajouter et mettre a jour (enforce la limite d'un seul client)
  static Future<void> setClient(Client client) async {
    // Assurez-vous qu'Isar est initialisé
    if (!isar.isOpen) {
      await LocalDb.initializeLocalDB();
    }
    await deleteClient();

    await isar.writeTxn(() async {
      await isar.clients.put(client);
    });
  }

  //
  //
  //
  //  Récupérer le client
  static Future<Client?> getClient() async {
    if (!isar.isOpen) {
      await LocalDb.initializeLocalDB();
    }

    var data = await isar.clients.where().findAll();

    if (data.isEmpty) {
      return null;
    } else {
      return data[0];
    }
  }

  //
  //
  //
  // Supprimer le client
  static Future<void> deleteClient() async {
    if (!isar.isOpen) {
      await LocalDb.initializeLocalDB();
    }

    await isar.writeTxn(() async {
      await isar.clients.where().deleteAll();
    });
  }
}
