import 'package:isar/isar.dart';
part 'contact.g.dart';

//dart run build_runner build

@collection
class Contact {
  Id id = Isar.autoIncrement;

  final String idApi;
  final String username;
  final String password;
  final String email;
  final String profilePicture;
  final bool onlineStatus;
  final DateTime? lastOnlineDate;
  final String createdByType;
  final String createdByRole;
  final String createdById;
  final bool activeSuspended;
  final int? activeSuspensionDurationInHours;
  final DateTime? activeStartDate;
  final DateTime? activeEndDate;
  final String companyId;
  final String role;
  final String fonction;
  final String loginId;
  final DateTime registrationDate;
  final List<DateTime> loginHistory;

  Contact({
    required this.idApi,
    required this.username,
    required this.password,
    required this.email,
    required this.profilePicture,
    required this.onlineStatus,
    required this.lastOnlineDate,
    required this.createdByType,
    required this.createdByRole,
    required this.createdById,
    required this.activeSuspended,
    required this.activeSuspensionDurationInHours,
    required this.activeStartDate,
    required this.activeEndDate,
    required this.companyId,
    required this.role,
    required this.fonction,
    required this.loginId,
    required this.registrationDate,
    required this.loginHistory,
  });

  Contact.empty()
      : idApi = '',
        username = '',
        password = '',
        email = '',
        profilePicture = '',
        onlineStatus = false,
        lastOnlineDate = null,
        createdByType = '',
        createdByRole = '',
        createdById = '',
        activeSuspended = false,
        activeSuspensionDurationInHours = null,
        activeStartDate = null,
        activeEndDate = null,
        companyId = '',
        role = '',
        fonction = '',
        loginId = '',
        registrationDate = DateTime.now(),
        loginHistory = const [];

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      idApi: json['_id'] ?? "",
      username: json['profile']['username'] ?? "",
      password: json['profile']['password'] ?? "",
      email: json['profile']['email'] ?? "",
      profilePicture: json['profile']['profilePicture'] ?? "",
      onlineStatus: json['online']['status'] ?? false,
      lastOnlineDate: json['online']['lastOnlineDate'] != null
          ? DateTime.parse(json['online']['lastOnlineDate'])
          : null,
      createdByType: json['createdby']['type'] ?? "",
      createdByRole: json['createdby']['role'] ?? "",
      createdById: json['createdby']['id'] ?? "",
      activeSuspended: json['active']['suspended'] ?? false,
      activeSuspensionDurationInHours: json['active']
          ['suspensionDurationInHours'],
      activeStartDate: json['active']['startDate'] != null
          ? DateTime.parse(json['active']['startDate'])
          : null,
      activeEndDate: json['active']['endDate'] != null
          ? DateTime.parse(json['active']['endDate'])
          : null,
      companyId: json['companyId'] ?? "",
      role: json['role'] ?? "",
      fonction: json['fonction'] ?? "",
      loginId: json['loginId'] ?? "",
      registrationDate: DateTime.parse(json['registrationDate']),
      loginHistory: (json['loginHistory'] as List)
          .map((login) => DateTime.parse(login))
          .toList(),
    );
  }
}
