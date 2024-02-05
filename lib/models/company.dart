import 'package:isar/isar.dart';

@Collection()
class Company {
  @Id()
  late int id;

  final String companyName;
  final DateTime registrationDate;
  final String ceoName;
  final String ceoPhoneNumber;
  final String ceoEmail;
  final String locationCountry;
  final String locationCity;
  final String locationDistrict;
  final String locationOtherDetails;
  final String businessType;
  final String createdBy;
  final bool suspended;
  final String suspensionReason;
  final String suspensionDuration;
  final DateTime? suspensionStart;
  final DateTime? suspensionEnd;

  Company({
    required this.companyName,
    required this.registrationDate,
    required this.ceoName,
    required this.ceoPhoneNumber,
    required this.ceoEmail,
    required this.locationCountry,
    required this.locationCity,
    required this.locationDistrict,
    required this.locationOtherDetails,
    required this.businessType,
    required this.createdBy,
    required this.suspended,
    required this.suspensionReason,
    required this.suspensionDuration,
    this.suspensionStart,
    this.suspensionEnd,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      companyName: json['companyName'],
      registrationDate: DateTime.parse(json['registrationDate']),
      ceoName: json['ceo']['name'],
      ceoPhoneNumber: json['ceo']['phoneNumber'],
      ceoEmail: json['ceo']['email'],
      locationCountry: json['location']['country'],
      locationCity: json['location']['city'],
      locationDistrict: json['location']['district'],
      locationOtherDetails: json['location']['otherDetails'],
      businessType: json['businessType']['type'],
      createdBy: json['createdBy'],
      suspended: json['suspension']['suspended'],
      suspensionReason: json['suspension']['reason'],
      suspensionDuration: json['suspension']['duration'],
      suspensionStart: json['suspension']['suspensionStart'] != null
          ? DateTime.parse(json['suspension']['suspensionStart'])
          : null,
      suspensionEnd: json['suspension']['suspensionEnd'] != null
          ? DateTime.parse(json['suspension']['suspensionEnd'])
          : null,
    );
  }
}
