
import 'package:exchange_rate/ui/state/main_state.dart';
import 'package:flutter/material.dart';

import '../../data/repository/interface/rate_repository_impl.dart';

class MainViewModel extends ChangeNotifier {
  final RateRepositoryImpl rateRepository;

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel({
    required this.rateRepository,
  });

  Future<void> updateRateResult(
      String baseCode, String targetCode, String amount) async {
    final result = await rateRepository.getRateResult(
        baseCode, targetCode, convertNum(number: amount));
    _state = state.copyWith(rateResult: result);
  }

  // 문자열인 숫자를 받아서 num타입인 숫자로 리턴
  num convertNum({required String number}) => num.tryParse(number) ?? 0;
}
