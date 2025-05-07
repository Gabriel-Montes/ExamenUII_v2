import 'package:flutter/material.dart';

class ST extends StatefulWidget {
  const ST({Key? key}) : super(key: key);

  @override
  State<ST> createState() => _STState();
}

class _STState extends State<ST> {
  String selectedText = '';
  @override
  Widget build(BuildContext context) {
    const String _selectableText = 'Seleccione este texto';
    const TextStyle _stylePurple = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
    );
    const TextStyle _style = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText'),
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
              selectedText.toString(),
              style: _stylePurple,
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.yellow,
              ),
              child: SelectableText(
                _selectableText,
                style: _style,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    selectedText = _selectableText.substring(
                      selection.start,
                      selection.end,
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
