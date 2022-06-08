import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_app/pages/home_page/widgets/tile_drawer.dart';

import '../../../components/profile_image.dart';
import '../../../layout/colors.dart';
import '../../../utils/constants.dart';

class DrawerPattern extends StatelessWidget {
  const DrawerPattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width * 0.75,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(189, 197, 205, 1),
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    width: size.width * 0.75 - 35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProfileImage(
                              radius: 30,
                              url: url,
                            ),
                            Row(
                              children: [
                                ProfileImage(
                                  radius: 16,
                                  url: url,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                ProfileImage(
                                  radius: 16,
                                  url: url,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                SvgPicture.asset(
                                  'assets/svg/menu_icon.svg',
                                  height: 32,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pixsellz',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPattern,
                          ),
                        ),
                        Text(
                          '@pixsellz',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grayPattern,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Wrap(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '216',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textPattern,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grayPattern,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '117',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textPattern,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grayPattern,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        const TileDrawer(
                          icon: 'profile_icon',
                          text: 'Profile',
                        ),
                        const TileDrawer(
                          icon: 'lists_icon',
                          text: 'Lists',
                        ),
                        const TileDrawer(
                          icon: 'lists_icon',
                          text: 'Topics',
                        ),
                        const TileDrawer(
                          icon: 'bookmark_icon',
                          text: 'Bookmarks',
                        ),
                        const TileDrawer(
                          icon: 'moments_icon',
                          text: 'Moments',
                          padding: false,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(189, 197, 205, 1),
                  width: size.width,
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Settings and privacy',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textPattern,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Help Center',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textPattern,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/svg/union.svg',
                    height: 25,
                  ),
                  SvgPicture.asset(
                    'assets/svg/qrcode.svg',
                    height: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
