// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameRecord> _$gameRecordSerializer = new _$GameRecordSerializer();

class _$GameRecordSerializer implements StructuredSerializer<GameRecord> {
  @override
  final Iterable<Type> types = const [GameRecord, _$GameRecord];
  @override
  final String wireName = 'GameRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.firstrand;
    if (value != null) {
      result
        ..add('firstrand')
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
  GameRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstrand':
          result.firstrand = serializers.deserialize(value,
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

class _$GameRecord extends GameRecord {
  @override
  final String? firstrand;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GameRecord([void Function(GameRecordBuilder)? updates]) =>
      (new GameRecordBuilder()..update(updates))._build();

  _$GameRecord._({this.firstrand, this.ffRef}) : super._();

  @override
  GameRecord rebuild(void Function(GameRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameRecordBuilder toBuilder() => new GameRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameRecord &&
        firstrand == other.firstrand &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, firstrand.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameRecord')
          ..add('firstrand', firstrand)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GameRecordBuilder implements Builder<GameRecord, GameRecordBuilder> {
  _$GameRecord? _$v;

  String? _firstrand;
  String? get firstrand => _$this._firstrand;
  set firstrand(String? firstrand) => _$this._firstrand = firstrand;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GameRecordBuilder() {
    GameRecord._initializeBuilder(this);
  }

  GameRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstrand = $v.firstrand;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameRecord;
  }

  @override
  void update(void Function(GameRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameRecord build() => _build();

  _$GameRecord _build() {
    final _$result =
        _$v ?? new _$GameRecord._(firstrand: firstrand, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
