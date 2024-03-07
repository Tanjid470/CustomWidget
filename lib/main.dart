import 'package:flutter/material.dart';
import 'package:tanjiddemo/Screen/Widgets/Indecator/Indecator.dart';
import 'package:tanjiddemo/Screen/Widgets/Navigator%20V2/navigator_notch.dart';
import 'package:tanjiddemo/Screen/Widgets/Navigator%20V1/buttomNavigatorBar.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Indecator()
    );
  }
}

