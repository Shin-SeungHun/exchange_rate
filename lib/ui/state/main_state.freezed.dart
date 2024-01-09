// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainState _$MainStateFromJson(Map<String, dynamic> json) {
  return _MainState.fromJson(json);
}

/// @nodoc
mixin _$MainState {
  RateResult? get rateResult => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  num get baseMoney => throw _privateConstructorUsedError;
  num get targetMoney => throw _privateConstructorUsedError;
  String get baseCode => throw _privateConstructorUsedError;
  String get targetCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {RateResult? rateResult,
      bool isLoading,
      num baseMoney,
      num targetMoney,
      String baseCode,
      String targetCode});

  $RateResultCopyWith<$Res>? get rateResult;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateResult = freezed,
    Object? isLoading = null,
    Object? baseMoney = null,
    Object? targetMoney = null,
    Object? baseCode = null,
    Object? targetCode = null,
  }) {
    return _then(_value.copyWith(
      rateResult: freezed == rateResult
          ? _value.rateResult
          : rateResult // ignore: cast_nullable_to_non_nullable
              as RateResult?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
      targetMoney: null == targetMoney
          ? _value.targetMoney
          : targetMoney // ignore: cast_nullable_to_non_nullable
              as num,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      targetCode: null == targetCode
          ? _value.targetCode
          : targetCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateResultCopyWith<$Res>? get rateResult {
    if (_value.rateResult == null) {
      return null;
    }

    return $RateResultCopyWith<$Res>(_value.rateResult!, (value) {
      return _then(_value.copyWith(rateResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RateResult? rateResult,
      bool isLoading,
      num baseMoney,
      num targetMoney,
      String baseCode,
      String targetCode});

  @override
  $RateResultCopyWith<$Res>? get rateResult;
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateResult = freezed,
    Object? isLoading = null,
    Object? baseMoney = null,
    Object? targetMoney = null,
    Object? baseCode = null,
    Object? targetCode = null,
  }) {
    return _then(_$MainStateImpl(
      rateResult: freezed == rateResult
          ? _value.rateResult
          : rateResult // ignore: cast_nullable_to_non_nullable
              as RateResult?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
      targetMoney: null == targetMoney
          ? _value.targetMoney
          : targetMoney // ignore: cast_nullable_to_non_nullable
              as num,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      targetCode: null == targetCode
          ? _value.targetCode
          : targetCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainStateImpl with DiagnosticableTreeMixin implements _MainState {
  const _$MainStateImpl(
      {this.rateResult,
      this.isLoading = false,
      this.baseMoney = 1,
      this.targetMoney = 1,
      this.baseCode = 'KRW',
      this.targetCode = 'USD'});

  factory _$MainStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainStateImplFromJson(json);

  @override
  final RateResult? rateResult;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final num baseMoney;
  @override
  @JsonKey()
  final num targetMoney;
  @override
  @JsonKey()
  final String baseCode;
  @override
  @JsonKey()
  final String targetCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState(rateResult: $rateResult, isLoading: $isLoading, baseMoney: $baseMoney, targetMoney: $targetMoney, baseCode: $baseCode, targetCode: $targetCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState'))
      ..add(DiagnosticsProperty('rateResult', rateResult))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('baseMoney', baseMoney))
      ..add(DiagnosticsProperty('targetMoney', targetMoney))
      ..add(DiagnosticsProperty('baseCode', baseCode))
      ..add(DiagnosticsProperty('targetCode', targetCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.rateResult, rateResult) ||
                other.rateResult == rateResult) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.baseMoney, baseMoney) ||
                other.baseMoney == baseMoney) &&
            (identical(other.targetMoney, targetMoney) ||
                other.targetMoney == targetMoney) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            (identical(other.targetCode, targetCode) ||
                other.targetCode == targetCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rateResult, isLoading, baseMoney,
      targetMoney, baseCode, targetCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainStateImplToJson(
      this,
    );
  }
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final RateResult? rateResult,
      final bool isLoading,
      final num baseMoney,
      final num targetMoney,
      final String baseCode,
      final String targetCode}) = _$MainStateImpl;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$MainStateImpl.fromJson;

  @override
  RateResult? get rateResult;
  @override
  bool get isLoading;
  @override
  num get baseMoney;
  @override
  num get targetMoney;
  @override
  String get baseCode;
  @override
  String get targetCode;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
