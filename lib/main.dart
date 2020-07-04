import 'package:bloc_navigation/page/page_four.dart';
import 'package:bloc_navigation/page/page_one..dart';
import 'package:bloc_navigation/page/page_three.dart';
import 'package:bloc_navigation/page/page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/my_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => MyBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => PageOne(),
        '/pageTwo': (context) => PageTwo(),
        '/pageThree': (context) => PageThree(),
        '/pageFour': (context) => PageFour(),
      },
      initialRoute: '/',
    );
  }
}
