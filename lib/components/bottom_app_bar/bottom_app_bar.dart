import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_app/pages/home_page/utils/screens.dart';

import '../../pages/home_page/store/home_store.dart';
import 'components/button_bottom_app_bar.dart';

class DefaultBottomAppBar extends StatelessWidget {
  const DefaultBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeStore controller = GetIt.I.get<HomeStore>();

    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(189, 197, 205, 1),
              ),
            ),
          ),
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          height: 60,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonBottomAppBar(
                    controller: controller,
                    iconSelected: 'home_blue',
                    iconNotSelected: 'home',
                    screen: Screen.home,
                  ),
                  ButtonBottomAppBar(
                    controller: controller,
                    iconSelected: 'search_blue',
                    iconNotSelected: 'search',
                    screen: Screen.search,
                  ),
                  ButtonBottomAppBar(
                    controller: controller,
                    iconSelected: 'notification_blue',
                    iconNotSelected: 'notification',
                    screen: Screen.notification,
                  ),
                  ButtonBottomAppBar(
                    controller: controller,
                    iconSelected: 'message_blue',
                    iconNotSelected: 'mail',
                    screen: Screen.message,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
