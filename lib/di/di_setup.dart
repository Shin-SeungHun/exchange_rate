import 'package:exchange_rate/data/config/api_config.dart';
import 'package:exchange_rate/data/repository/interface/rate_repository.dart';
import 'package:exchange_rate/ui/view_model/main_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ApiConfig>(ApiConfig());
  getIt.registerSingleton<MainViewModel>(MainViewModel(rateRepository: getIt<RateRepository>()));
}
