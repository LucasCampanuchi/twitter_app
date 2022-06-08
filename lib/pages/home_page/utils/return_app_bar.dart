import 'package:flutter/material.dart';
import 'package:twitter_app/pages/home_page/utils/screens.dart';

import '../../notifications_page/components/app_bar_notifications.dart';
import '../../search_page/components/app_bar_search.dart';
import '../components/app_bar_home.dart';
import '../store/home_store.dart';

dynamic getAppBar(HomeStore controller) {
  switch (controller.screen) {
    case Screen.home:
      return AppBarHome(
        appBar: AppBar(),
      );
    case Screen.search:
      return AppBarSearch(
        appBar: AppBar(),
      );
    case Screen.notification:
      return AppBarNotification(
        appBar: AppBar(),
      );
    case Screen.message:
      return AppBarNotification(
        appBar: AppBar(),
      );
  }
}
