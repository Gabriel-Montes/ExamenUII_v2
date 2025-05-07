import 'package:flutter/material.dart';
//import 'package:widget_of_the_day/80_pageroute_builder/BouncyPageRoute.dart';

class PRB extends StatelessWidget {
  const PRB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: const Text('PageRouteBuilder'),
        backgroundColor: Color(0xffcb0202),
        titleTextStyle: TextStyle(
            color: Color(0xffffffff),
            fontSize: 22,
            fontWeight: FontWeight.bold),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Cambia el color aquí
        ),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange,
          child: const Text(
            'Secundaria',
            style: TextStyle(color: Colors.white, fontSize: 29),
          ),
          onPressed: () {
            Navigator.push(
              context,
              BouncyPageRoute(
                widget: const SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(title: const Text('Pagina Secundaria')),
      body: const Center(
        child: Text(
          'Pagina Secundaria',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class BouncyPageRoute extends PageRouteBuilder {
  final Widget widget;
  BouncyPageRoute({required this.widget})
      : super(
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secAnimation,
            Widget child,
          ) {
            animation = CurvedAnimation(
              parent: animation,
              curve: Curves.elasticInOut,
            );
            return ScaleTransition(
              alignment: Alignment.center,
              scale: animation,
              child: child,
            );
          },
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secAnimation,
          ) {
            return widget;
          },
        );
}
