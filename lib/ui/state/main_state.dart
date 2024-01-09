import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../data/model/rate_result.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    RateResult? rateResult,
    @Default(false) bool isLoading,
    @Default(1) num baseMoney,
    @Default(1) num targetMoney,
    @Default('KRW') String baseCode,
    @Default('USD') String targetCode,
    @Default({}) Map<String, num> conversionRate,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) =>
      _$MainStateFromJson(json);
}
