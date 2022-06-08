import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_app/layout/colors.dart';

import '../../../components/icon_profile_image.dart';

class AppBarSearch extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const AppBarSearch({
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
            const Flexible(flex: 1, child: IconProfileImage()),
            Flexible(
              flex: 4,
              child: Container(
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.grayContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      25,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/search.svg',
                      height: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search Twitter',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grayPattern,
                      ),
                    ),
                  ],
                ),
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
