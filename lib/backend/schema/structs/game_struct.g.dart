// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameStruct> _$gameStructSerializer = new _$GameStructSerializer();

class _$GameStructSerializer implements StructuredSerializer<GameStruct> {
  @override
  final Iterable<Type> types = const [GameStruct, _$GameStruct];
  @override
  final String wireName = 'GameStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.rand1;
    if (value != null) {
      result
        ..add('rand1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GameStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rand1':
          result.rand1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$GameStruct extends GameStruct {
  @override
  final String? rand1;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$GameStruct([void Function(GameStructBuilder)? updates]) =>
      (new GameStructBuilder()..update(updates))._build();

  _$GameStruct._({this.rand1, required this.firestoreUtilData}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'GameStruct', 'firestoreUtilData');
  }

  @override
  GameStruct rebuild(void Function(GameStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameStructBuilder toBuilder() => new GameStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameStruct &&
        rand1 == other.rand1 &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rand1.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameStruct')
          ..add('rand1', rand1)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class GameStructBuilder implements Builder<GameStruct, GameStructBuilder> {
  _$GameStruct? _$v;

  String? _rand1;
  String? get rand1 => _$this._rand1;
  set rand1(String? rand1) => _$this._rand1 = rand1;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  GameStructBuilder() {
    GameStruct._initializeBuilder(this);
  }

  GameStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rand1 = $v.rand1;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameStruct;
  }

  @override
  void update(void Function(GameStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameStruct build() => _build();

  _$GameStruct _build() {
    final _$result = _$v ??
        new _$GameStruct._(
            rand1: rand1,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'GameStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
