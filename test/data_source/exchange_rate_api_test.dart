import 'package:exchange_rate/data/data_source/exchange_rate_api.dart';
import 'package:exchange_rate/data/dto/exchange_rate_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('api 테스트', () async {
    final ExchangeRateApi api = ExchangeRateApi();
    ExchangeRateDto dto = await api.getExchangeResult('EUR','GDP',0.8412);
    // ExchangeRateDto dto2 = await api.getExchangeResult('USD');

    expect(dto, isNotNull);
    // expect(dto2, isNotNull);
  });
}