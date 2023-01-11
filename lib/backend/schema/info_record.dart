import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'info_record.g.dart';

abstract class InfoRecord implements Built<InfoRecord, InfoRecordBuilder> {
  static Serializer<InfoRecord> get serializer => _$infoRecordSerializer;

  String? get text;

  String? get photo;

  String? get details;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InfoRecordBuilder builder) => builder
    ..text = ''
    ..photo = ''
    ..details = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('info');

  static Stream<InfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InfoRecord._();
  factory InfoRecord([void Function(InfoRecordBuilder) updates]) = _$InfoRecord;

  static InfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInfoRecordData({
  String? text,
  String? photo,
  String? details,
}) {
  final firestoreData = serializers.toFirestore(
    InfoRecord.serializer,
    InfoRecord(
      (i) => i
        ..text = text
        ..photo = photo
        ..details = details,
    ),
  );

  return firestoreData;
}
