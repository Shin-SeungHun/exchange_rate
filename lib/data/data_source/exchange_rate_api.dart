import 'dart:convert';

import 'package:exchange_rate/data/config/api_config.dart';
import 'package:exchange_rate/data/dto/exchange_rate_dto.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

class ExchangeRateApi {
  getExchangeLatestResult(String baseCode, String targetCode, num amount) async {
    // print('https://v6.exchangerate-api.com/v6/${GetIt.instance<ApiConfig>().apikey}/pair/$baseCode/$targetCode/$amount');
    final response = await http.get(Uri.parse(
        'https://v6.exchangerate-api.com/v6/latest/$baseCode'));
    return ExchangeRateDto.fromJson(jsonDecode(response.body));
  }

  getExchangePairResult(String baseCode, String targetCode, num amount) async {
    // print('https://v6.exchangerate-api.com/v6/${GetIt.instance<ApiConfig>().apikey}/pair/$baseCode/$targetCode/$amount');
    final response = await http.get(Uri.parse(
        'https://v6.exchangerate-api.com/v6/${GetIt.instance<ApiConfig>().apikey}/pair/$baseCode/$targetCode/$amount'));
    return ExchangeRateDto.fromJson(jsonDecode(response.body));
  }
}
