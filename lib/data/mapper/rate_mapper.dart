import 'package:exchange_rate/data/dto/exchange_rate_dto.dart';
import 'package:exchange_rate/data/model/rate_result.dart';

extension RateMapper on ExchangeRateDto {
  RateResult toRateResult() {
    return RateResult(
        lastUpdateTime: DateTime.fromMillisecondsSinceEpoch(
            (timeLastUpdateUtc as int) * 1000),
        nextUpdateTime: DateTime.fromMillisecondsSinceEpoch(
            (timeNextUpdateUnix as int) * 1000),
        baseCode: baseCode as String,
        rates: rates as Map<String, num>);
  }
}
