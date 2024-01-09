import 'dart:convert';

import 'package:exchange_rate/data/dto/exchange_rate_dto.dart';
import 'package:http/http.dart' as http;

class ExchangeRateApi {
  getExchangeResult(String baseCode) async {
    final response = await http
        .get(Uri.parse('https://open.er-api.com/v6/latest/$baseCode'));
    // // https://v6.exchangerate-api.com/v6/f1da1d0984279f9e565c3c2f/latest/USD
    return ExchangeRateDto.fromJson(jsonDecode(response.body));
  }
}
