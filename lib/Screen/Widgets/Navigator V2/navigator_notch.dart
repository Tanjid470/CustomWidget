import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:tanjiddemo/Screen/Widgets/Navigator%20V2/course.dart';
import 'package:tanjiddemo/Screen/Widgets/Navigator%20V2/home.dart';
import 'package:tanjiddemo/Screen/Widgets/Navigator%20V2/inbox.dart';
import 'package:tanjiddemo/Screen/Widgets/Navigator%20V2/menu.dart';
import 'dart:ui' as ui;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
      actionButton: CurvedActionBar(
          onTab: (value) {
            /// perform action here
            print(value);
          },
          activeIcon: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.document_scanner_outlined,
              size: 43,
              color: Color(0xFFE11471),
            ),
          ),
          inActiveIcon: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.document_scanner_outlined,
              size: 43,
              color: Color(0xFFE11471),
            ),
          ),
          text: "Scan QR"),
      activeColor:  const Color(0xFFFFCE5A2F),
      inActiveColor: Colors.black45,
      appBarItems: [
        navigatorItems("Home", Icons.home_outlined),
        navigatorItems("Course", Icons.list),
        navigatorItems("Updates", Icons.notifications_on_outlined),
        navigatorItems("Menu", Icons.menu_sharp),
      ],
      bodyItems: const [
        AppBarWidget(),
        Course(),
        InboxPage(),
        Menu(),
      ],
      // actionBarView: Container(
      //   height: MediaQuery.of(context).size.height,
      //   color: Colors.orange,
      // ),
    );
  }

  FABBottomAppBarItem navigatorItems(String title, IconData icon) {
    return FABBottomAppBarItem(
        activeIcon: gradientIcon(icon),
        inActiveIcon: Icon(
          icon,
          size: 33,
          color: Colors.black26,
        ),
        text: title);
  }

  ShaderMask gradientIcon(IconData icon) {
    return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) {
          return ui.Gradient.linear(const Offset(4.0, 25.0), const Offset(25.0, 5.0),
              [const Color(0xFFF52B4F), const Color(0xFFFF9700)]);
        },
        child: Icon(icon,size: 33,),
      );
  }
  ShaderMask gradientTextColor() {
    return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) {
          return ui.Gradient.linear(const Offset(4.0, 25.0), const Offset(25.0, 5.0),
              [const Color(0xFFF52B4F), const Color(0xFFFF9700)]);
        },
      );
  }
}
