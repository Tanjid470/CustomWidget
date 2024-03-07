
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Colors.pink,
        title: const Center(
            child: Text(
          'Inbox',
          style: TextStyle(color: Colors.white),
        )),
      
      ),
      body:Container(color: Colors.black38,)

    );
  }
}
