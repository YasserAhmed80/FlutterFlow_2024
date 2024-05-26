// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtRefTableStruct extends FFFirebaseStruct {
  DtRefTableStruct({
    String? desc,
    int? lng,
    int? code,
    String? source,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _desc = desc,
        _lng = lng,
        _code = code,
        _source = source,
        super(firestoreUtilData);

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  // "lng" field.
  int? _lng;
  int get lng => _lng ?? 0;
  set lng(int? val) => _lng = val;
  void incrementLng(int amount) => _lng = lng + amount;
  bool hasLng() => _lng != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;
  void incrementCode(int amount) => _code = code + amount;
  bool hasCode() => _code != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;
  bool hasSource() => _source != null;

  static DtRefTableStruct fromMap(Map<String, dynamic> data) =>
      DtRefTableStruct(
        desc: data['desc'] as String?,
        lng: castToType<int>(data['lng']),
        code: castToType<int>(data['code']),
        source: data['source'] as String?,
      );

  static DtRefTableStruct? maybeFromMap(dynamic data) => data is Map
      ? DtRefTableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'desc': _desc,
        'lng': _lng,
        'code': _code,
        'source': _source,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'lng': serializeParam(
          _lng,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtRefTableStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtRefTableStruct(
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtRefTableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtRefTableStruct &&
        desc == other.desc &&
        lng == other.lng &&
        code == other.code &&
        source == other.source;
  }

  @override
  int get hashCode => const ListEquality().hash([desc, lng, code, source]);
}

DtRefTableStruct createDtRefTableStruct({
  String? desc,
  int? lng,
  int? code,
  String? source,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtRefTableStruct(
      desc: desc,
      lng: lng,
      code: code,
      source: source,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtRefTableStruct? updateDtRefTableStruct(
  DtRefTableStruct? dtRefTable, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtRefTable
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtRefTableStructData(
  Map<String, dynamic> firestoreData,
  DtRefTableStruct? dtRefTable,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtRefTable == null) {
    return;
  }
  if (dtRefTable.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtRefTable.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtRefTableData = getDtRefTableFirestoreData(dtRefTable, forFieldValue);
  final nestedData = dtRefTableData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtRefTable.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtRefTableFirestoreData(
  DtRefTableStruct? dtRefTable, [
  bool forFieldValue = false,
]) {
  if (dtRefTable == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtRefTable.toMap());

  // Add any Firestore field values
  dtRefTable.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtRefTableListFirestoreData(
  List<DtRefTableStruct>? dtRefTables,
) =>
    dtRefTables?.map((e) => getDtRefTableFirestoreData(e, true)).toList() ?? [];
