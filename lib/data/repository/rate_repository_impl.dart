import 'package:exchange_rate/data/data_source/exchange_rate_api.dart';
import 'package:exchange_rate/data/dto/exchange_rate_dto.dart';
import 'package:exchange_rate/data/mapper/rate_mapper.dart';
import 'package:exchange_rate/data/model/rate_result.dart';
import 'package:exchange_rate/data/repository/interface/rate_repository.dart';

class RateRepositoryImpl implements RateRepository{
  final ExchangeRateApi api;

  const RateRepositoryImpl({
    required this.api,
  });

  @override
  Future<RateResult> getRateResult(String baseCode) async {
  final ExchangeRateDto dto = await api.getExchangeResult(baseCode);

    return dto.toRateResult();
  }



}