import 'dart:convert';

import 'package:exchange_rate/data/config/api_config.dart';
import 'package:exchange_rate/data/dto/exchange_rate_dto.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

class ExchangeRateApi {
  getExchangeResult(String baseCode, String targetCode, num amount) async {
    final response = await http.get(Uri.parse(
        'https://v6.exchangerate-api.com/v6/${GetIt.instance<ApiConfig>().apikey}/latest/$baseCode/$targetCode/$amount'));
    return ExchangeRateDto.fromJson(jsonDecode(response.body));
  }
}
