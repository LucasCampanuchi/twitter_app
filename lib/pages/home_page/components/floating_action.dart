import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../layout/colors.dart';

class FloatingButtonHome extends StatelessWidget {
  const FloatingButtonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.bluePattern,
      elevation: 1,
      child: SvgPicture.asset(
        'assets/svg/add.svg',
      ),
      tooltip: 'Adicionar',
      onPressed: null,
    );
  }
}
