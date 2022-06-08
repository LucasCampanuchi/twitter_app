import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

import '../../../pages/home_page/store/home_store.dart';
import '../../../pages/home_page/utils/screens.dart';

class ButtonBottomAppBar extends StatelessWidget {
  final HomeStore controller;
  final Screen screen;
  final String iconSelected;
  final String iconNotSelected;

  const ButtonBottomAppBar({
    Key? key,
    required this.controller,
    required this.screen,
    required this.iconSelected,
    required this.iconNotSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => InkWell(
        onTap: () => controller.setScreen(
          screen,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/svg/${controller.screen == screen ? iconSelected : iconNotSelected}.svg',
            height: 25,
          ),
        ),
      ),
    );
  }
}
