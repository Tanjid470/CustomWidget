import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 65,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: const Center(
              child: Text(
            'Course',
            style: TextStyle(color: Color.fromARGB(255, 43, 43, 43)),
          )),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromARGB(255, 119, 119, 119),
                child: ListTile(
              title: Text("$index"),
              subtitle: Text("test"),
            ));
          },
        ));
  }
}
