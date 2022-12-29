import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AboutScreen.dart';
import 'HomeScreen.dart';

void main() => runApp(ctapp());

class ctapp extends StatelessWidget {
  const ctapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 30.0),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
