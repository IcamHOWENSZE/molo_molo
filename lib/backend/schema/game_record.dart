import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'game_record.g.dart';

abstract class GameRecord implements Built<GameRecord, GameRecordBuilder> {
  static Serializer<GameRecord> get serializer => _$gameRecordSerializer;

  String? get firstrand;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GameRecordBuilder builder) =>
      builder..firstrand = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('game');

  static Stream<GameRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GameRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GameRecord._();
  factory GameRecord([void Function(GameRecordBuilder) updates]) = _$GameRecord;

  static GameRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGameRecordData({
  String? firstrand,
}) {
  final firestoreData = serializers.toFirestore(
    GameRecord.serializer,
    GameRecord(
      (g) => g..firstrand = firstrand,
    ),
  );

  return firestoreData;
}
