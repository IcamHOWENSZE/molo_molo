// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InfoRecord> _$infoRecordSerializer = new _$InfoRecordSerializer();

class _$InfoRecordSerializer implements StructuredSerializer<InfoRecord> {
  @override
  final Iterable<Type> types = const [InfoRecord, _$InfoRecord];
  @override
  final String wireName = 'InfoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  InfoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$InfoRecord extends InfoRecord {
  @override
  final String? text;
  @override
  final String? photo;
  @override
  final String? details;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InfoRecord([void Function(InfoRecordBuilder)? updates]) =>
      (new InfoRecordBuilder()..update(updates))._build();

  _$InfoRecord._({this.text, this.photo, this.details, this.ffRef}) : super._();

  @override
  InfoRecord rebuild(void Function(InfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoRecordBuilder toBuilder() => new InfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfoRecord &&
        text == other.text &&
        photo == other.photo &&
        details == other.details &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), photo.hashCode), details.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfoRecord')
          ..add('text', text)
          ..add('photo', photo)
          ..add('details', details)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InfoRecordBuilder implements Builder<InfoRecord, InfoRecordBuilder> {
  _$InfoRecord? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InfoRecordBuilder() {
    InfoRecord._initializeBuilder(this);
  }

  InfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _photo = $v.photo;
      _details = $v.details;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InfoRecord;
  }

  @override
  void update(void Function(InfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfoRecord build() => _build();

  _$InfoRecord _build() {
    final _$result = _$v ??
        new _$InfoRecord._(
            text: text, photo: photo, details: details, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
