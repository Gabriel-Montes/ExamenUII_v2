import 'package:flutter/material.dart';
import 'p_listwheelscrollview.dart';
import 'p_cliprect.dart';
import 'p_data_table.dart';
import 'p_grid_paper.dart';
import 'p_null_aware_operators.dart';
import 'p_pageroute_builder.dart';
import 'p_raw_material_button.dart';
import 'p_selectable_text.dart';
import 'p_stack.dart';
import 'p_timer.dart';
import 'pag_Prin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      debugShowCheckedModeBanner: false,
      title: 'Examen',
      initialRoute: '/',
      routes: {
        '/': (context) => const PP(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/a': (context) => const Ti(),
        '/b': (context) => const S(),
        '/c': (context) => const LWSV(),
        '/d': (context) => const RMB(),
        '/e': (context) => const CR(),
        '/f': (context) => const DT(),
        '/g': (context) => const GP(),
        '/h': (context) => const ST(),
        '/i': (context) => const PRB(),
        '/j': (context) => NOD(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
