import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_app/layout/colors.dart';

import '../../../components/icon_profile_image.dart';

class AppBarNotification extends StatelessWidget
    implements PreferredSizeWidget {
  final AppBar appBar;

  const AppBarNotification({
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
            const Flexible(
              flex: 1,
              child: IconProfileImage(),
            ),
            Text(
              'Notifications',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: AppColors.textPattern,
              ),
            ),
            Flexible(
              flex: 1,
              child: SvgPicture.asset(
                'assets/svg/config.svg',
              ),
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
