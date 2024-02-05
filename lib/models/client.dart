import 'package:isar/isar.dart';
part 'client.g.dart';

// dart run build_runner build

@Collection()
class Client {
  Id id = Isar.autoIncrement;

  final String idApi;
  final String username;
  final String password;
  final String email;
  final String profilePicture;
  final List<String> createdByType;
  final List<String> createdByRole;
  final List<String> createdById;
  final List<bool> activeSuspended;
  final List<String?> activeSuspensionDurationInHours;
  final List<DateTime?> activeStartDate;
  final List<DateTime?> activeEndDate;
  final List<String> companyId;
  final List<String> role;
  final List<String> fonction;
  final String loginId;
  final DateTime registrationDate;
  final List<DateTime> loginHistory;
  final List<bool> blocked;

  Client({
    required this.idApi,
    required this.username,
    required this.password,
    required this.email,
    required this.profilePicture,
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
    required this.blocked,
  });

  Client.empty()
      : idApi = '',
        username = '',
        password = '',
        email = '',
        profilePicture = '',
        createdByType = [],
        createdByRole = [],
        createdById = [],
        activeSuspended = [],
        activeSuspensionDurationInHours = [],
        activeStartDate = [],
        activeEndDate = [],
        companyId = [],
        role = [],
        fonction = [],
        loginId = '',
        registrationDate = DateTime.now(),
        blocked = [],
        loginHistory = const [];

  factory Client.fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> companyInfos = [];
    if (json['companyInfos'] is List) {
      companyInfos =
          (json['companyInfos'] as List).cast<Map<String, dynamic>>();
    }

    List<Map<String, dynamic>> createdByList = companyInfos
        .map((info) => info['createdBy'] ?? {})
        .cast<Map<String, dynamic>>()
        .toList();

    List<Map<String, dynamic>> activeList = companyInfos
        .map((info) => info['active'] ?? {})
        .cast<Map<String, dynamic>>()
        .toList();

    return Client(
      idApi: json['_id'] ?? "",
      username: json['profile']['username'] ?? "",
      password: json['profile']['password'] ?? "",
      email: json['profile']['email'] ?? "",
      profilePicture: json['profile']['profilePicture'] ?? "",
      createdByType:
          createdByList.map((info) => info['type'] as String).toList(),
      createdByRole:
          createdByList.map((info) => info['role'] as String).toList(),
      createdById: createdByList.map((info) => info['id'] as String).toList(),
      activeSuspended:
          activeList.map((info) => info['suspended'] as bool).toList(),
      blocked: activeList.map((info) => info['blocked'] as bool).toList(),
      activeSuspensionDurationInHours: activeList
          .map((info) => info['suspensionDurationInHours'] as String)
          .toList(),
      activeStartDate: activeList
          .map((info) => info['startDate'] != null
              ? DateTime.parse(info['startDate'])
              : null)
          .toList(),
      activeEndDate: activeList
          .map((info) =>
              info['endDate'] != null ? DateTime.parse(info['endDate']) : null)
          .toList(),
      companyId:
          companyInfos.map((info) => info['companyId'] as String).toList(),
      role: companyInfos.map((info) => info['role'] as String).toList(),
      fonction: companyInfos.map((info) => info['fonction'] as String).toList(),
      loginId: json['loginId'] ?? "",
      registrationDate: DateTime.parse(json['registrationDate']),
      loginHistory: (json['loginHistory'] as List)
          .map((login) => DateTime.parse(login))
          .toList(),
    );
  }
}
