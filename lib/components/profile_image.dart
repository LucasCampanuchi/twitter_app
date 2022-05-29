import 'package:flutter/material.dart';

import 'image_network.dart';

class ProfileImage extends StatelessWidget {
  final String url;
  final double radius;
  final void Function()? onTap;

  const ProfileImage({
    Key? key,
    this.radius = 35,
    this.onTap,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: onTap,
              child: CircleAvatar(
                backgroundColor: Colors.black26,
                radius: radius,
                child: ClipOval(
                  child: SizedBox(
                    height: 110,
                    width: 110,
                    child: ImageNetwork(
                      url: url,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
