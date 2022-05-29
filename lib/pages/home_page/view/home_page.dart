import 'package:flutter/material.dart';

import '../../../components/bottom_app_bar.dart';
import '../components/app_bar_home.dart';
import '../components/floating_action.dart';
import '../components/post_with_threads.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppBarHome appBar = AppBarHome(
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
      floatingActionButton: const FloatingButtonHome(),
      body: SizedBox(
        height: height,
        width: size.width,
        child: PageView(
          children: [
            Column(
              children: const [
                SizedBox(height: 50),
                PostWithThreads(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
