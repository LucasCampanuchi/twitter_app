import 'package:flutter/material.dart';

import '../../../layout/colors.dart';

class ContainerNotFound extends StatelessWidget {
  const ContainerNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Text(
              'No new trends for you',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.textPattern,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Text(
              'It seems like there’s not a lot to show you right now, but you can see trends for other areas',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: AppColors.grayPattern,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.bluePattern,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              width: 150,
              height: 35,
              child: const Center(
                child: Text(
                  'Change location',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
