import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CustPhotosRecord extends FirestoreRecord {
  CustPhotosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cus_id" field.
  String? _cusId;
  String get cusId => _cusId ?? '';
  bool hasCusId() => _cusId != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "c" field.
  String? _c;
  String get c => _c ?? '';
  bool hasC() => _c != null;

  void _initializeFields() {
    _cusId = snapshotData['cus_id'] as String?;
    _url = snapshotData['url'] as String?;
    _c = snapshotData['c'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cust_photos');

  static Stream<CustPhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustPhotosRecord.fromSnapshot(s));

  static Future<CustPhotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustPhotosRecord.fromSnapshot(s));

  static CustPhotosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustPhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustPhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustPhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustPhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustPhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustPhotosRecordData({
  String? cusId,
  String? url,
  String? c,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cus_id': cusId,
      'url': url,
      'c': c,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustPhotosRecordDocumentEquality implements Equality<CustPhotosRecord> {
  const CustPhotosRecordDocumentEquality();

  @override
  bool equals(CustPhotosRecord? e1, CustPhotosRecord? e2) {
    return e1?.cusId == e2?.cusId && e1?.url == e2?.url && e1?.c == e2?.c;
  }

  @override
  int hash(CustPhotosRecord? e) =>
      const ListEquality().hash([e?.cusId, e?.url, e?.c]);

  @override
  bool isValidKey(Object? o) => o is CustPhotosRecord;
}
