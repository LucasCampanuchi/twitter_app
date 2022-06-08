import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../layout/colors.dart';

class TileDrawer extends StatelessWidget {
  final String icon;
  final String text;
  final bool padding;

  const TileDrawer(
      {Key? key, required this.icon, required this.text, this.padding = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: padding ? 30.0 : 0,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              'assets/svg/$icon.svg',
              height: 25,
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: AppColors.textPattern,
            ),
          ),
        ],
      ),
    );
  }
}
