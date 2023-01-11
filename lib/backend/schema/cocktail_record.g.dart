// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CocktailRecord> _$cocktailRecordSerializer =
    new _$CocktailRecordSerializer();

class _$CocktailRecordSerializer
    implements StructuredSerializer<CocktailRecord> {
  @override
  final Iterable<Type> types = const [CocktailRecord, _$CocktailRecord];
  @override
  final String wireName = 'CocktailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CocktailRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.alcoolContain;
    if (value != null) {
      result
        ..add('alcool_contain')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titlecolor;
    if (value != null) {
      result
        ..add('titlecolor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.preparation;
    if (value != null) {
      result
        ..add('preparation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ingredient;
    if (value != null) {
      result
        ..add('ingredient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorite;
    if (value != null) {
      result
        ..add('favorite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CocktailRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CocktailRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'alcool_contain':
          result.alcoolContain = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'titlecolor':
          result.titlecolor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'preparation':
          result.preparation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ingredient':
          result.ingredient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorite':
          result.favorite.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CocktailRecord extends CocktailRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final bool? alcoolContain;
  @override
  final LatLng? location;
  @override
  final String? photo;
  @override
  final Color? titlecolor;
  @override
  final Color? color;
  @override
  final String? preparation;
  @override
  final String? ingredient;
  @override
  final BuiltList<DocumentReference<Object?>>? favorite;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CocktailRecord([void Function(CocktailRecordBuilder)? updates]) =>
      (new CocktailRecordBuilder()..update(updates))._build();

  _$CocktailRecord._(
      {this.name,
      this.description,
      this.createdAt,
      this.modifiedAt,
      this.alcoolContain,
      this.location,
      this.photo,
      this.titlecolor,
      this.color,
      this.preparation,
      this.ingredient,
      this.favorite,
      this.ffRef})
      : super._();

  @override
  CocktailRecord rebuild(void Function(CocktailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CocktailRecordBuilder toBuilder() =>
      new CocktailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CocktailRecord &&
        name == other.name &&
        description == other.description &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        alcoolContain == other.alcoolContain &&
        location == other.location &&
        photo == other.photo &&
        titlecolor == other.titlecolor &&
        color == other.color &&
        preparation == other.preparation &&
        ingredient == other.ingredient &&
        favorite == other.favorite &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, name.hashCode),
                                                    description.hashCode),
                                                createdAt.hashCode),
                                            modifiedAt.hashCode),
                                        alcoolContain.hashCode),
                                    location.hashCode),
                                photo.hashCode),
                            titlecolor.hashCode),
                        color.hashCode),
                    preparation.hashCode),
                ingredient.hashCode),
            favorite.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CocktailRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('alcoolContain', alcoolContain)
          ..add('location', location)
          ..add('photo', photo)
          ..add('titlecolor', titlecolor)
          ..add('color', color)
          ..add('preparation', preparation)
          ..add('ingredient', ingredient)
          ..add('favorite', favorite)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CocktailRecordBuilder
    implements Builder<CocktailRecord, CocktailRecordBuilder> {
  _$CocktailRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  bool? _alcoolContain;
  bool? get alcoolContain => _$this._alcoolContain;
  set alcoolContain(bool? alcoolContain) =>
      _$this._alcoolContain = alcoolContain;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  Color? _titlecolor;
  Color? get titlecolor => _$this._titlecolor;
  set titlecolor(Color? titlecolor) => _$this._titlecolor = titlecolor;

  Color? _color;
  Color? get color => _$this._color;
  set color(Color? color) => _$this._color = color;

  String? _preparation;
  String? get preparation => _$this._preparation;
  set preparation(String? preparation) => _$this._preparation = preparation;

  String? _ingredient;
  String? get ingredient => _$this._ingredient;
  set ingredient(String? ingredient) => _$this._ingredient = ingredient;

  ListBuilder<DocumentReference<Object?>>? _favorite;
  ListBuilder<DocumentReference<Object?>> get favorite =>
      _$this._favorite ??= new ListBuilder<DocumentReference<Object?>>();
  set favorite(ListBuilder<DocumentReference<Object?>>? favorite) =>
      _$this._favorite = favorite;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CocktailRecordBuilder() {
    CocktailRecord._initializeBuilder(this);
  }

  CocktailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _alcoolContain = $v.alcoolContain;
      _location = $v.location;
      _photo = $v.photo;
      _titlecolor = $v.titlecolor;
      _color = $v.color;
      _preparation = $v.preparation;
      _ingredient = $v.ingredient;
      _favorite = $v.favorite?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CocktailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CocktailRecord;
  }

  @override
  void update(void Function(CocktailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CocktailRecord build() => _build();

  _$CocktailRecord _build() {
    _$CocktailRecord _$result;
    try {
      _$result = _$v ??
          new _$CocktailRecord._(
              name: name,
              description: description,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              alcoolContain: alcoolContain,
              location: location,
              photo: photo,
              titlecolor: titlecolor,
              color: color,
              preparation: preparation,
              ingredient: ingredient,
              favorite: _favorite?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favorite';
        _favorite?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CocktailRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
