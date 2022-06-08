import 'package:flutter/material.dart';
import 'package:twitter_app/pages/home_page/view/home_page.dart';
import 'package:twitter_app/pages/home_page/widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool drawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Material(
      color: Colors.white,
      child: Stack(
        children: [
          const DrawerPattern(),
          AnimatedPositioned(
            duration: const Duration(
              milliseconds: 300,
            ),
            left: !drawerOpen ? 0 : size.width * 0.75,
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: const HomePage(),
            ),
          ),
          GestureDetector(
            onTapDown: drawerOpen
                ? (e) {
                    if (e.globalPosition.dx > size.width * 0.75) {
                      setState(() {
                        drawerOpen = false;
                      });
                    }
                  }
                : null,
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  drawerOpen = true;
                });
              } else {
                setState(() {
                  drawerOpen = false;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
