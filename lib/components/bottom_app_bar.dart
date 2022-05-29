import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultBottomAppBar extends StatelessWidget {
  const DefaultBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SvgPicture.asset(
              'assets/svg/home.svg',
              height: 25,
            ),
            SvgPicture.asset(
              'assets/svg/search.svg',
              height: 25,
            ),
            SvgPicture.asset(
              'assets/svg/notification.svg',
              height: 25,
            ),
            SvgPicture.asset(
              'assets/svg/mail.svg',
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
