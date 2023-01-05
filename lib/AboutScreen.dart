import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final name = args['name'];
    final phone = args['phone'];
    final email = args['email'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('$name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dp2.PNG'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 80.0,
                color: Colors.grey[800],
              ),
              Text(
                'Phone: $phone',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Email: $email',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
