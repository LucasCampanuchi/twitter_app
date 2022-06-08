import 'package:flutter/material.dart';

import '../../../layout/colors.dart';
import '../components/container_not_found.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 15,
                ),
                child: Text(
                  'Trends for you',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPattern,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width,
            height: 1,
            color: AppColors.grayContainer,
          ),
          const ContainerNotFound()
        ],
      ),
    );
  }
}
