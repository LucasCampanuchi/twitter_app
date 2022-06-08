import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:twitter_app/pages/home_page/utils/screens.dart';
import 'package:twitter_app/pages/posts_page/view/posts_page.dart';
import 'package:twitter_app/pages/search_page/components/app_bar_search.dart';

import '../../../components/bottom_app_bar/bottom_app_bar.dart';
import '../../search_page/view/search_page.dart';
import '../components/app_bar_home.dart';
import '../components/floating_action.dart';
import '../store/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore controller = GetIt.I.get<HomeStore>();

  @override
  void initState() {
    reaction(
      (_) => controller.screen,
      (msg) => {
        setState(() {}),
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dynamic appBar = controller.screen == Screen.home
        ? AppBarHome(
            appBar: AppBar(),
          )
        : AppBarSearch(
            appBar: AppBar(),
          );

    final Size size = MediaQuery.of(context).size;

    final double height = size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top -
        60;

    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: const DefaultBottomAppBar(),
      floatingActionButton: FloatingButtonHome(
        controller: controller,
      ),
      body: SizedBox(
        height: height,
        width: size.width,
        child: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            PostsPage(),
            SearchPage(),
            Icon(Icons.medical_services_outlined),
            Icon(Icons.message),
          ],
        ),
      ),
    );
  }
}
