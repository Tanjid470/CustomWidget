
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: const Color.fromARGB(255, 30, 159, 233),
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
