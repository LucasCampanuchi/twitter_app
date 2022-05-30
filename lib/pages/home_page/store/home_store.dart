import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../utils/screens.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  Screen screen = Screen.home;

  @observable
  PageController pageController = PageController();

  @action
  void setScreen(Screen s) {
    screen = s;

    switch (s) {
      case Screen.home:
        pageController.jumpToPage(0);
        break;
      case Screen.search:
        pageController.jumpToPage(1);
        break;
      case Screen.notification:
        pageController.jumpToPage(2);
        break;
      case Screen.message:
        pageController.jumpToPage(3);
        break;
    }
  }
}
