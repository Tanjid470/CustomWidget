import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => AppBarWidgetState();
}

class AppBarWidgetState extends State<AppBarWidget> {
  

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Center(child: Text("Home")),
      ),
      //endDrawer: DrawerWidget(),
      body: Container(
        color: const Color.fromARGB(255, 151, 151, 151),
      ),
    );
  }
}
