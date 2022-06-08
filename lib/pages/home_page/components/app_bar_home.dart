import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_app/components/profile_image.dart';

import '../../../utils/constants.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const AppBarHome({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ProfileImage(
                  radius: 20,
                  url: url,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromRGBO(76, 158, 235, 1),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SvgPicture.asset(
              'assets/svg/twitter_logo.svg',
            ),
            SvgPicture.asset(
              'assets/svg/stroke_icon.svg',
            ),
          ],
        ),
      ),
      elevation: 0.6,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
