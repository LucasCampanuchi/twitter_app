import 'package:get_it/get_it.dart';

import '../pages/home_page/store/home_store.dart';

Future<void> mobx() async {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<HomeStore>(
    HomeStore(),
  );
}
