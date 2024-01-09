import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../ui/view/main_screen.dart';
import '../ui/view_model/main_view_model.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider.value(
        value: GetIt.instance<MainViewModel>(),
        child: MainScreen(),
      );
      },
    ),
  ],
);
