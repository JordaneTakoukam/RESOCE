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
      type: IsarType.dateTimeList,
    ),
    r'activeStartDate': PropertySchema(
      id: 1,
      name: r'activeStartDate',
      type: IsarType.dateTimeList,
    ),
    r'activeSuspended': PropertySchema(
      id: 2,
      name: r'activeSuspended',
      type: IsarType.boolList,
    ),
    r'activeSuspensionDurationInHours': PropertySchema(
      id: 3,
      name: r'activeSuspensionDurationInHours',
      type: IsarType.stringList,
    ),
    r'companyId': PropertySchema(
      id: 4,
      name: r'companyId',
      type: IsarType.stringList,
    ),
    r'createdById': PropertySchema(
      id: 5,
      name: r'createdById',
      type: IsarType.stringList,
    ),
    r'createdByRole': PropertySchema(
      id: 6,
      name: r'createdByRole',
      type: IsarType.stringList,
    ),
    r'createdByType': PropertySchema(
      id: 7,
      name: r'createdByType',
      type: IsarType.stringList,
    ),
    r'email': PropertySchema(
      id: 8,
      name: r'email',
      type: IsarType.string,
    ),
    r'fonction': PropertySchema(
      id: 9,
      name: r'fonction',
      type: IsarType.stringList,
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
      type: IsarType.stringList,
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
  bytesCount += 3 + object.activeEndDate.length * 8;
  bytesCount += 3 + object.activeStartDate.length * 8;
  bytesCount += 3 + object.activeSuspended.length;
  bytesCount += 3 + object.activeSuspensionDurationInHours.length * 3;
  {
    for (var i = 0; i < object.activeSuspensionDurationInHours.length; i++) {
      final value = object.activeSuspensionDurationInHours[i];
      if (value != null) {
        bytesCount += value.length * 3;
      }
    }
  }
  bytesCount += 3 + object.companyId.length * 3;
  {
    for (var i = 0; i < object.companyId.length; i++) {
      final value = object.companyId[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.createdById.length * 3;
  {
    for (var i = 0; i < object.createdById.length; i++) {
      final value = object.createdById[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.createdByRole.length * 3;
  {
    for (var i = 0; i < object.createdByRole.length; i++) {
      final value = object.createdByRole[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.createdByType.length * 3;
  {
    for (var i = 0; i < object.createdByType.length; i++) {
      final value = object.createdByType[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.fonction.length * 3;
  {
    for (var i = 0; i < object.fonction.length; i++) {
      final value = object.fonction[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.idApi.length * 3;
  bytesCount += 3 + object.loginHistory.length * 8;
  bytesCount += 3 + object.loginId.length * 3;
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.profilePicture.length * 3;
  bytesCount += 3 + object.role.length * 3;
  {
    for (var i = 0; i < object.role.length; i++) {
      final value = object.role[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _clientSerialize(
  Client object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTimeList(offsets[0], object.activeEndDate);
  writer.writeDateTimeList(offsets[1], object.activeStartDate);
  writer.writeBoolList(offsets[2], object.activeSuspended);
  writer.writeStringList(offsets[3], object.activeSuspensionDurationInHours);
  writer.writeStringList(offsets[4], object.companyId);
  writer.writeStringList(offsets[5], object.createdById);
  writer.writeStringList(offsets[6], object.createdByRole);
  writer.writeStringList(offsets[7], object.createdByType);
  writer.writeString(offsets[8], object.email);
  writer.writeStringList(offsets[9], object.fonction);
  writer.writeString(offsets[10], object.idApi);
  writer.writeDateTime(offsets[11], object.lastOnlineDate);
  writer.writeDateTimeList(offsets[12], object.loginHistory);
  writer.writeString(offsets[13], object.loginId);
  writer.writeBool(offsets[14], object.onlineStatus);
  writer.writeString(offsets[15], object.password);
  writer.writeString(offsets[16], object.profilePicture);
  writer.writeDateTime(offsets[17], object.registrationDate);
  writer.writeStringList(offsets[18], object.role);
  writer.writeString(offsets[19], object.username);
}

Client _clientDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Client(
    activeEndDate: reader.readDateTimeOrNullList(offsets[0]) ?? [],
    activeStartDate: reader.readDateTimeOrNullList(offsets[1]) ?? [],
    activeSuspended: reader.readBoolList(offsets[2]) ?? [],
    activeSuspensionDurationInHours:
        reader.readStringOrNullList(offsets[3]) ?? [],
    companyId: reader.readStringList(offsets[4]) ?? [],
    createdById: reader.readStringList(offsets[5]) ?? [],
    createdByRole: reader.readStringList(offsets[6]) ?? [],
    createdByType: reader.readStringList(offsets[7]) ?? [],
    email: reader.readString(offsets[8]),
    fonction: reader.readStringList(offsets[9]) ?? [],
    idApi: reader.readString(offsets[10]),
    lastOnlineDate: reader.readDateTimeOrNull(offsets[11]),
    loginHistory: reader.readDateTimeList(offsets[12]) ?? [],
    loginId: reader.readString(offsets[13]),
    onlineStatus: reader.readBool(offsets[14]),
    password: reader.readString(offsets[15]),
    profilePicture: reader.readString(offsets[16]),
    registrationDate: reader.readDateTime(offsets[17]),
    role: reader.readStringList(offsets[18]) ?? [],
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
      return (reader.readDateTimeOrNullList(offset) ?? []) as P;
    case 1:
      return (reader.readDateTimeOrNullList(offset) ?? []) as P;
    case 2:
      return (reader.readBoolList(offset) ?? []) as P;
    case 3:
      return (reader.readStringOrNullList(offset) ?? []) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
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
      return (reader.readStringList(offset) ?? []) as P;
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
  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'activeEndDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'activeEndDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateElementEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeEndDate',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeEndDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeEndDate',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeEndDate',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeEndDate',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeEndDate',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeEndDateLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeEndDate',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'activeStartDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'activeStartDate',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateElementEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeStartDate',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeStartDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeStartDate',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeStartDate',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeStartDate',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeStartDate',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeStartDateLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeStartDate',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspendedElementEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeSuspended',
        value: value,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspendedLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspended',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> activeSuspendedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspended',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspendedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspended',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspendedLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspended',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspendedLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspended',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspendedLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspended',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'activeSuspensionDurationInHours',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'activeSuspensionDurationInHours',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeSuspensionDurationInHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activeSuspensionDurationInHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activeSuspensionDurationInHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activeSuspensionDurationInHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'activeSuspensionDurationInHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'activeSuspensionDurationInHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activeSuspensionDurationInHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activeSuspensionDurationInHours',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeSuspensionDurationInHours',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activeSuspensionDurationInHours',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspensionDurationInHours',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspensionDurationInHours',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspensionDurationInHours',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspensionDurationInHours',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspensionDurationInHours',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      activeSuspensionDurationInHoursLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'activeSuspensionDurationInHours',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdElementEqualTo(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      companyIdElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      companyIdElementStartsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdElementEndsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdElementContains(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdElementMatches(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      companyIdElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      companyIdElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'companyId',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'companyId',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'companyId',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'companyId',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      companyIdLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'companyId',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> companyIdLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'companyId',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdElementEqualTo(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementStartsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementEndsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdElementMatches(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdById',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdById',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdById',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdById',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdById',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdById',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByIdLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdById',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByIdLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdById',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementEqualTo(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementStartsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementEndsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByRole',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByRole',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByRole',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByRole',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByRoleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByRole',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByRole',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByRole',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByRole',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByRoleLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByRole',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementEqualTo(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementStartsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementEndsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByType',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByType',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByType',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> createdByTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByType',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByType',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByType',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByType',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      createdByTypeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdByType',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementEqualTo(
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

  QueryBuilder<Client, Client, QAfterFilterCondition>
      fonctionElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementStartsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementEndsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementContains(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementMatches(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fonction',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition>
      fonctionElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fonction',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fonction',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fonction',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fonction',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fonction',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fonction',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> fonctionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fonction',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementEqualTo(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementGreaterThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementLessThan(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementBetween(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementStartsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementEndsWith(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementMatches(
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

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'role',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'role',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'role',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'role',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'role',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Client, Client, QAfterFilterCondition> roleLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'role',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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

  QueryBuilder<Client, Client, QDistinct> distinctByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCreatedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdById');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCreatedByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByRole');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByCreatedByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByType');
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Client, Client, QDistinct> distinctByFonction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fonction');
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

  QueryBuilder<Client, Client, QDistinct> distinctByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role');
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

  QueryBuilder<Client, List<DateTime?>, QQueryOperations>
      activeEndDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeEndDate');
    });
  }

  QueryBuilder<Client, List<DateTime?>, QQueryOperations>
      activeStartDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeStartDate');
    });
  }

  QueryBuilder<Client, List<bool>, QQueryOperations> activeSuspendedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeSuspended');
    });
  }

  QueryBuilder<Client, List<String?>, QQueryOperations>
      activeSuspensionDurationInHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeSuspensionDurationInHours');
    });
  }

  QueryBuilder<Client, List<String>, QQueryOperations> companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<Client, List<String>, QQueryOperations> createdByIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdById');
    });
  }

  QueryBuilder<Client, List<String>, QQueryOperations> createdByRoleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByRole');
    });
  }

  QueryBuilder<Client, List<String>, QQueryOperations> createdByTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByType');
    });
  }

  QueryBuilder<Client, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Client, List<String>, QQueryOperations> fonctionProperty() {
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

  QueryBuilder<Client, List<String>, QQueryOperations> roleProperty() {
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
