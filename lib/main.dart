import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:twitter_app/routes/app_routes.dart';

import 'config/init.dart';
import 'config/myapp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  runApp(
    ModularApp(
      module: AppModule(),
      child: const MyApp(),
    ),
  );
}
