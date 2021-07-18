import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'page6.dart';
import 'lastPage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/page1',
  routes: {
    '/page1': (context) => page1(),
    '/page2': (context) => page2(),
    '/page3': (context) => page3(),
    '/page4': (context) => page4(),
    '/page5': (context) => page5(),
    '/page6': (context) => page6(),
    '/lastPage': (context) => lastPage(),
  },
));
