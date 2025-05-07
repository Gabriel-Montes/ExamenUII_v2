import 'package:flutter/material.dart';

class RMB extends StatelessWidget {
  const RMB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawMaterialButton'),
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
        child: RawMaterialButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.explore,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(width: 15.0),
                Text(
                  'PURCHAGE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          fillColor: Colors.deepOrange,
          splashColor: Colors.orange,
          shape: const StadiumBorder(),
          elevation: 8.0,
          onPressed: () {},
        ),
      ),
    );
  }
}
