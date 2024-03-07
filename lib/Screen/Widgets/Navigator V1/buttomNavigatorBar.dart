import 'package:flutter/material.dart';

class ButtomNavigatorBar extends StatefulWidget {
  const ButtomNavigatorBar({super.key});

  @override
  State<ButtomNavigatorBar> createState() => _ButtomNavigatorBarState();
}

class _ButtomNavigatorBarState extends State<ButtomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,


        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                50), // Adjust the value to make it more or less circular
          ),
          backgroundColor: Colors.black54,
          child: const Icon(
            Icons.add,
            size: 50,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.black38,
          shadowColor: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              navigatorItems(10, 0,Icons.home,"home"),
              navigatorItems(0, 10,Icons.golf_course,"Course"),
              const Padding(
                padding: EdgeInsets.only(right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(""),Text(" Scan QR")],
                ),
              ),
              navigatorItems(10, 0,Icons.notification_important,"Updates"),
              navigatorItems(0, 10,Icons.menu,"Menu"),
            ],
          ),
        ));
        
  }

  Padding navigatorItems(double left, double right,IconData icon,String title) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: Column(
        children: [Icon(icon,color: Colors.white,), Text(title,style: TextStyle(color: Colors.white),)],
      ),
    );
  }
}
