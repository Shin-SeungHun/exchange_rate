import 'package:exchange_rate/data/repository/interface/rate_repository.dart';
import 'package:exchange_rate/ui/state/main_state.dart';
import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  final RateRepository rateRepository;

  MainState _state = const MainState();


  MainState get state => _state;

  MainViewModel({
    required this.rateRepository,
  });

  Future<void> updateRateResult(String baseCode) async {
    final result = await rateRepository.getRateResult(baseCode);
    _state =state.copyWith(rateResult: result);
  }
}
