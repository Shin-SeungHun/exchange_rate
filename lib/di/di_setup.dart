import 'package:exchange_rate/ui/view_model/main_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<MainViewModel>(MainViewModel());
}
