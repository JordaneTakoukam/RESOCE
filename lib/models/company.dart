import 'package:isar/isar.dart';
part 'company.g.dart';

@Collection()
class Company {
  Id id = Isar.autoIncrement;

  final String name;
  final String phoneNumber;
  final String email;
  final String idApi;
  final String companyName;
  final DateTime registrationDate;
  final String location;
  final String createBy;
  final bool suspended;

  Company({
    required this.idApi,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.companyName,
    required this.registrationDate,
    required this.location,
    required this.createBy,
    required this.suspended,
  });

  Company.empty()
      : idApi = '',
        name = '',
        phoneNumber = '',
        email = '',
        companyName = '',
        registrationDate = DateTime.now(),
        location = '',
        createBy = '',
        suspended = false;

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      idApi: json['_id'] ?? "",
      name: json['properties']['name'] ?? "",
      phoneNumber: json['properties']['phoneNumber'] ?? "",
      email: json['properties']['email'] ?? "",
      companyName: json['companyName'] ?? "",
      registrationDate: DateTime.parse(json['registrationDate']),
      location: json['location'] ?? "",
      createBy: json['createBy'] ?? "",
      suspended: json['suspended'] ?? false,
    );
  }
}
