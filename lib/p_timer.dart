import 'dart:async';
import 'package:flutter/material.dart';

class Ti extends StatefulWidget {
  const Ti({Key? key}) : super(key: key);

  @override
  State<Ti> createState() => _TiState();
}

class _TiState extends State<Ti> {
  // variable
  int timeLeft = 5;

  // timer method
  void _startCountDown() {
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? 'DONE' : timeLeft.toString(),
              style: const TextStyle(fontSize: 70),
            ),
            MaterialButton(
              onPressed: _startCountDown,
              color: Colors.red,
              child: const Text(
                'S T A R T',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
