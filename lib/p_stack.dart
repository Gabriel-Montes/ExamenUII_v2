import 'package:flutter/material.dart';

class S extends StatelessWidget {
  const S({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S T A C K"),
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
        child: Stack(
          // aligning the children of the stack
          alignment: Alignment.center,
          children: [
            // closer to the back of the phone
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.blue[200],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue[400],
              ),
            ),
            // closer to the front of the phone
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
