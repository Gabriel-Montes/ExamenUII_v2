import 'package:flutter/material.dart';
/*import 'tile.dart';
import 'hours.dart';
import 'minutes.dart';
import 'am_pm.dart';*/

class LWSV extends StatefulWidget {
  const LWSV({Key? key}) : super(key: key);

  @override
  _LWSVState createState() => _LWSVState();
}

class _LWSVState extends State<LWSV> {
  int currentHour = 0;
  int currentMinute = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("ListWheelScrollView"),
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // hours wheel
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                // do stuff
                setState(() {
                  currentHour = value;
                });
              },
              itemExtent: 60,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                  return MyHours(
                    hours: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            width: 10,
            child: Text(
              ':',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // minutes wheel
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                // do stuff
                setState(() {
                  currentMinute = value;
                });
              },
              itemExtent: 60,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index) {
                  return MyMinutes(
                    minutes: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          // am/pm wheel
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 60,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if (index == 0) {
                    return const MyAMPM(
                      isItAM: true,
                    );
                  } else {
                    return const MyAMPM(
                      isItAM: false,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAMPM extends StatelessWidget {
  final bool isItAM;
  const MyAMPM({Key? key, required this.isItAM}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        isItAM == true ? 'am' : 'pm',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyHours extends StatelessWidget {
  final int hours;
  const MyHours({Key? key, required this.hours}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        hours.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyMinutes extends StatelessWidget {
  final int minutes;
  const MyMinutes({Key? key, required this.minutes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        minutes < 10 ? '0' + minutes.toString() : minutes.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(child: Text("data")),
    );
  }
}
