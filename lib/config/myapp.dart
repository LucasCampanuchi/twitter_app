import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../layout/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
        primarySwatch: AppColors.mcgpalette0,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
