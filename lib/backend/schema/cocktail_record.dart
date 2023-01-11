import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cocktail_record.g.dart';

abstract class CocktailRecord
    implements Built<CocktailRecord, CocktailRecordBuilder> {
  static Serializer<CocktailRecord> get serializer =>
      _$cocktailRecordSerializer;

  String? get name;

  String? get description;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: 'alcool_contain')
  bool? get alcoolContain;

  LatLng? get location;

  String? get photo;

  Color? get titlecolor;

  Color? get color;

  String? get preparation;

  String? get ingredient;

  BuiltList<DocumentReference>? get favorite;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CocktailRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..alcoolContain = false
    ..photo = ''
    ..preparation = ''
    ..ingredient = ''
    ..favorite = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cocktail');

  static Stream<CocktailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CocktailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CocktailRecord._();
  factory CocktailRecord([void Function(CocktailRecordBuilder) updates]) =
      _$CocktailRecord;

  static CocktailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCocktailRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? alcoolContain,
  LatLng? location,
  String? photo,
  Color? titlecolor,
  Color? color,
  String? preparation,
  String? ingredient,
}) {
  final firestoreData = serializers.toFirestore(
    CocktailRecord.serializer,
    CocktailRecord(
      (c) => c
        ..name = name
        ..description = description
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..alcoolContain = alcoolContain
        ..location = location
        ..photo = photo
        ..titlecolor = titlecolor
        ..color = color
        ..preparation = preparation
        ..ingredient = ingredient
        ..favorite = null,
    ),
  );

  return firestoreData;
}
