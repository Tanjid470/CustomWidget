
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Colors.pink,
        title: const Center(
            child: Text(
          'Menu',
          style: TextStyle(color: Colors.white),
        )),
      
      ),
      body:Container(color: Colors.black38,)

    );
  }
}
