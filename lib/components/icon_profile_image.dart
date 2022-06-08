import 'package:flutter/material.dart';
import 'package:twitter_app/components/profile_image.dart';

import '../utils/constants.dart';

class IconProfileImage extends StatelessWidget {
  const IconProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
