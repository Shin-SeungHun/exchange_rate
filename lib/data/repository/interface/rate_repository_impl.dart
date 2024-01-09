import '../../model/rate_result.dart';

abstract interface class RateRepositoryImpl {
  Future<RateResult> getRateResult(String baseCode, String targetCode, num amount);
}
