// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClientCollection on Isar {
  IsarCollection<Client> get clients => this.collection();
}

const ClientSchema = CollectionSchema(
  name: r'Client',
  id: 1578245643436550370,
  properties: {
    r'activeEndDate': PropertySchema(
      id: 0,
      name: r'activeEndDate',
      type: IsarType.dateTime,
    ),
    r'activeStartDate': PropertySchema(
      id: 1,
      name: r'activeStartDate',
      type: IsarType.dateTime,
    ),
    r'activeSuspended': PropertySchema(
      id: 2,
      name: r'activeSuspended',
      type: IsarType.bool,
    ),
    r'activeSuspensionDurationInHours': PropertySchema(
      id: 3,
      name: r'activeSuspensionDurationInHours',
      type: IsarType.long,
    ),
    r'companyId': PropertySchema(
      id: 4,
      name: r'companyId',
      type: IsarType.string,
    ),
    r'createdById': PropertySchema(
      id: 5,
      name: r'createdById',
      type: IsarType.string,
    ),
    r'createdByRole': PropertySchema(
      id: 6,
      name: r'createdByRole',
      type: IsarType.string,
    ),
    r'createdByType': PropertySchema(
      id: 7,
      name: r'createdByType',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 8,
      name: r'email',
      type: IsarType.string,
    ),
    r'fonction': PropertySchema(
      id: 9,
      name: r'fonction',
      type: IsarType.string,
    ),
    r'idApi': PropertySchema(
      id: 10,
      name: r'idApi',
      type: IsarType.string,
    ),
    r'lastOnlineDate': PropertySchema(
      id: 11,
      name: r'lastOnlineDate',
      type: IsarType.dateTime,
    ),
    r'loginHistory': PropertySchema(
      id: 12,
      name: r'loginHistory',
      type: IsarType.dateTimeList,
    ),
    r'loginId': PropertySchema(
      id: 13,
      name: r'loginId',
      type: IsarType.string,
    ),
    r'onlineStatus': PropertySchema(
      id: 14,
      name: r'onlineStatus',
      type: IsarType.bool,
    ),
    r'password': PropertySchema(
      id: 15,
      name: r'password',
      type: IsarType.string,
    ),
    r'profilePicture': PropertySchema(
      id: 16,
      name: r'profilePicture',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 17,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'role': PropertySchema(
      id: 18,
      name: r'role',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 19,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _clientEstimateSize,
  serialize: _clientSerialize,
  deserialize: _clientDeserialize,
  deserializeProp: _clientDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _clientGetId,
  getLinks: _clientGetLinks,
  attach: _clientAttach,
  version: '3.1.0+1',
);

int _clientEstimateSize(
  Client object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.companyId.length * 3;
  bytesCount += 3 + object.createdById.length * 3;
  bytesCount += 3 + object.createdByRole.length * 3;
  bytesCount += 3 + object.createdByType.length * 3;
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.fonction.length * 3;
  bytesCount += 3 + object.idApi.length * 3;
  bytesCount += 3 + object.loginHistory.length * 8;
  bytesCount += 3 + object.loginId.length * 3;
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.profilePicture.length * 3;
  bytesCount += 3 + object.role.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _clientSerialize(
  Client object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.activeEndDate);
  writer.writeDateTime(offsets[1], object.activeStartDate);
  writer.writeBool(offsets[2], object.activeSuspended);
  writer.writeLong(offsets[3], object.activeSuspensionDurationInHours);
  writer.writeString(offsets[4], object.companyId);
  writer.writeString(offsets[5], object.createdById);
  writer.writeString(offsets[6], object.createdByRole);
  writer.writeString(offsets[7], object.createdByType);
  writer.writeString(offsets[8], object.email);
  writer.writeString(offsets[9], object.fonction);
  writer.writeString(offsets[10], object.idApi);
  writer.writeDateTime(offsets[11], object.lastOnlineDate);
  writer.writeDateTimeList(offsets[12], object.loginHistory);
  writer.writeString(offsets[13], object.loginId);
  writer.writeBool(offsets[14], object.onlineStatus);
  writer.writeString(offsets[15], object.password);
  writer.writeString(offsets[16], object.profilePicture);
  writer.writeDateTime(offsets[17], object.registrationDate);
  writer.writeString(offsets[18], object.role);
  writer.writeString(offsets[19], object.username);
}

Client _clientDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Client(
    activeEndDate: reader.readDateTimeOrNull(offsets[0]),
    activeStartDate: reader.readDateTimeOrNull(offsets[1]),
    activeSuspended: reader.readBool(offsets[2]),
    activeSuspensionDurationInHours: reader.readLongOrNull(offsets[3]),
    companyId: reader.readString(offsets[4]),
    createdById: reader.readString(offsets[5]),
    createdByRole: reader.readString(offsets[6]),
    createdByType: reader.readString(offsets[7]),
    email: reader.readString(offsets[8]),
    fonction: reader.readString(offsets[9]),
    idApi: reader.readString(offsets[10]),
    lastOnlineDate: reader.readDateTimeOrNull(offsets[11]),
    loginHistory: reader.readDateTimeList(offsets[12]) ?? [],
    loginId: reader.readString(offsets[13]),
    onlineStatus: reader.readBool(offsets[14]),
    password: reader.readString(offsets[15]),
    profilePicture: reader.readString(offsets[16]),
    registrationDate: reader.readDateTime(offsets[17]),
    role: reader.readString(offsets[18]),
    username: reader.readString(offsets[19]),
  );
  object.id = id;
  return object;
}

P _clientDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readDateTimeList(offset) ?? []) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readBool(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readDateTime(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _clientGetId(Client object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _clientGetLinks(Client object) {
  return [];
}

void _clientAttach(IsarCollection<dynamic> col, Id id, Client object) {
  object.id = id;
}

extension ClientQueryWhereSort on QueryBuilder<Client, Client, QWhere> {
  QueryBuilder<Client, Client, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClientQueryWhere on QueryBuilder<Client, Client, QWhereClause> {
  QueryBuilder<Client, Client, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Client, Client, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Client, Client, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Client, Client, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ClientQueryFilter on QueryBuilder<Client, Client, QFilterCondition> {
  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activeEndDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activeEndDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activeEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activeEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activeEndDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeStartDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activeStartDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activeStartDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeStartDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activeStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeStartDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activeStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeStartDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activeStartDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeSuspendedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeSuspended',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activeSuspensionDurationInHours',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activeSuspensionDurationInHours',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeSuspensionDurationInHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activeSuspensionDurationInHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activeSuspensionDurationInHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activeSuspensionDurationInHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'companyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdById',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdById',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdById',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdById',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdByRole',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByRole',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByRole',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByRole',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdByType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByType',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByType',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fonction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fonction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fonction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fonction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fonction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fonction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fonction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fonction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fonction',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fonction',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idApi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idApi',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idApi',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> idApiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idApi',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> lastOnlineDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastOnlineDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      lastOnlineDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastOnlineDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> lastOnlineDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastOnlineDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> lastOnlineDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastOnlineDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> lastOnlineDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastOnlineDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> lastOnlineDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastOnlineDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      loginHistoryElementEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginHistory',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      loginHistoryElementGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginHistory',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      loginHistoryElementLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginHistory',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      loginHistoryElementBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginHistory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginHistoryLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'loginHistory',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginHistoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'loginHistory',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginHistoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'loginHistory',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      loginHistoryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'loginHistory',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      loginHistoryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'loginHistory',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginHistoryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'loginHistory',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginId',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> loginIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginId',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> onlineStatusEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onlineStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profilePicture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profilePicture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> profilePictureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePicture',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      profilePictureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profilePicture',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> registrationDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      registrationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> registrationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> registrationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registrationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'role',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension ClientQueryObject on QueryBuilder<Client, Client, QFilterCondition> {}

extension ClientQueryLinks on QueryBuilder<Client, Client, QFilterCondition> {}

extension ClientQuerySortBy on QueryBuilder<Client, Client, QSortBy> {
  QueryBuilder<Client, Client, QAfterSortBy> sortByActiveEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEndDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByActiveEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEndDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByActiveStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeStartDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByActiveStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeStartDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByActiveSuspended() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspended', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByActiveSuspendedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspended', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy>
      sortByActiveSuspensionDurationInHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspensionDurationInHours', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy>
      sortByActiveSuspensionDurationInHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspensionDurationInHours', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCreatedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCreatedByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCreatedByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByRole', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCreatedByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByRole', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCreatedByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByType', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByCreatedByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByType', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByFonction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fonction', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByFonctionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fonction', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByIdApi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idApi', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByIdApiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idApi', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByLastOnlineDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOnlineDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByLastOnlineDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOnlineDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByLoginId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginId', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByLoginIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginId', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByOnlineStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineStatus', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByOnlineStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineStatus', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByProfilePicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByProfilePictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension ClientQuerySortThenBy on QueryBuilder<Client, Client, QSortThenBy> {
  QueryBuilder<Client, Client, QAfterSortBy> thenByActiveEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEndDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByActiveEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEndDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByActiveStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeStartDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByActiveStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeStartDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByActiveSuspended() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspended', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByActiveSuspendedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspended', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy>
      thenByActiveSuspensionDurationInHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspensionDurationInHours', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy>
      thenByActiveSuspensionDurationInHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSuspensionDurationInHours', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCreatedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCreatedByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCreatedByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByRole', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCreatedByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByRole', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCreatedByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByType', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByCreatedByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByType', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByFonction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fonction', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByFonctionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fonction', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByIdApi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idApi', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByIdApiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idApi', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByLastOnlineDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOnlineDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByLastOnlineDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOnlineDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByLoginId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginId', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByLoginIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginId', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByOnlineStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineStatus', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByOnlineStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineStatus', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByProfilePicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByProfilePictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<Client, Client, QAfterSortBy> thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension ClientQueryWhereDistinct on QueryBuilder<Client, Client, QDistinct> {
  QueryBuilder<Client, Client, QDistinct> distinctByActiveEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activeEndDate');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByActiveStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activeStartDate');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByActiveSuspended() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activeSuspended');
    });
  }

  QueryBuilder<Client, Client, QDistinct>
      distinctByActiveSuspensionDurationInHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activeSuspensionDurationInHours');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCompanyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCreatedById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdById', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCreatedByRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByRole',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCreatedByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByFonction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fonction', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByIdApi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idApi', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByLastOnlineDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastOnlineDate');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByLoginHistory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginHistory');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByLoginId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByOnlineStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onlineStatus');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByProfilePicture(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profilePicture',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension ClientQueryProperty on QueryBuilder<Client, Client, QQueryProperty> {
  QueryBuilder<Client, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Client, DateTime?, QQueryOperations> activeEndDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeEndDate');
    });
  }

  QueryBuilder<Client, DateTime?, QQueryOperations> activeStartDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeStartDate');
    });
  }

  QueryBuilder<Client, bool, QQueryOperations> activeSuspendedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeSuspended');
    });
  }

  QueryBuilder<Client, int?, QQueryOperations>
      activeSuspensionDurationInHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeSuspensionDurationInHours');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> createdByIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdById');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> createdByRoleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByRole');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> createdByTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByType');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> fonctionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fonction');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> idApiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idApi');
    });
  }

  QueryBuilder<Client, DateTime?, QQueryOperations> lastOnlineDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastOnlineDate');
    });
  }

  QueryBuilder<Client, List<DateTime>, QQueryOperations>
      loginHistoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginHistory');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> loginIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginId');
    });
  }

  QueryBuilder<Client, bool, QQueryOperations> onlineStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onlineStatus');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> profilePictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profilePicture');
    });
  }

  QueryBuilder<Client, DateTime, QQueryOperations> registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> roleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'role');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}