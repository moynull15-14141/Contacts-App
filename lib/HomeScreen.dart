import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map> users = [
    {"name": "pollob", "phone": 01745334044, "email": 'pollob@gmail.com'},
    {"name": "moynull", "phone": 0172347588, "email": 'moynull@gmail.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('Contacts'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/about',
                      arguments: users[index]);
                },
                leading: Icon(Icons.person),
                title: Text(users[index]['name']),
              ),
              elevation: 3,
            );
          },
          itemCount: users.length,
        ));
  }
}
