import 'package:exchange_rate/ui/state/main_state.dart';
import 'package:flutter/material.dart';

import '../../data/repository/interface/rate_repository.dart';

class MainViewModel extends ChangeNotifier {
  List<String> resultList = [];
  final RateRepository rateRepository;

  MainState _state =  const MainState();

  MainState get state => _state;

  MainViewModel({
    required this.rateRepository,
  });

  /// 문자열인 숫자를 받아서 num타입인 숫자로 리턴
  num convertNum({required String number}) => num.tryParse(number) ?? 0;

  Future<void> updateRateResult(
      {required String baseCode,
      required String targetCode,
      required String amount}) async {
    final result = await rateRepository.getRateResult(
        baseCode, targetCode, convertNum(number: amount));
    print('result $result');
    _state = state.copyWith(rateResult: result);

    resultList = result.rates.entries.map((e) => e.key).toList();

    notifyListeners();
  }

  Future<void> inputBaseMoney({required num money}) async {
    _state = state.copyWith(
        baseMoney: money,
        targetMoney: money * state.rateResult!.rates[state.targetCode]!);
    notifyListeners();
  }

  Future<void> inputBaseCode(
      {required String baseCode,
      required String targetCode,
      required String amount}) async {
    _state = state.copyWith(
        targetMoney:
            state.baseMoney * state.rateResult!.rates[state.targetCode]!);

    inputBaseMoney(money: state.baseMoney);
    notifyListeners();
  }

  void targetBaseMoney({required num money}) {
    _state = state.copyWith(
        targetMoney: money,
        baseMoney: money / state.rateResult!.rates[state.targetCode]!);
  }
}
