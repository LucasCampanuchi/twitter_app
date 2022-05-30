import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_app/pages/home_page/utils/screens.dart';

import '../../../layout/colors.dart';
import '../store/home_store.dart';

class FloatingButtonHome extends StatelessWidget {
  final HomeStore controller;
  const FloatingButtonHome({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return FloatingActionButton(
          backgroundColor: AppColors.bluePattern,
          elevation: 1,
          child: SvgPicture.asset(
            'assets/svg/${controller.screen == Screen.message ? 'new_message' : 'add'}.svg',
          ),
          tooltip: 'Adicionar',
          onPressed: null,
        );
      },
    );
  }
}
