import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  int digit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('student list and counter')),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: _counterText()),

          Center(child: _subtitlesText()),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [_resetButton(), _subtractButton(), _addButton()],
          ),
        ],
      ),
    );
  }

  Text _subtitlesText() {
    return Text(
      'this text value will increment when pressed on button',
      style: TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }

  Text _counterText() => Text(digit.toString(), style: TextStyle(fontSize: 50));

  FloatingActionButton _addButton() {
    return FloatingActionButton(
      onPressed: () {
        digit++;
        setState(() {});
      },
      child: Icon(Icons.add_circle),
    );
  }

  FloatingActionButton _subtractButton() {
    return FloatingActionButton(
      onPressed: () {
        if (digit == 0) {
        } else {
          digit--;
        }
        setState(() {});
      },
      child: Icon(Icons.remove_circle),
    );
  }

  FloatingActionButton _resetButton() {
    return FloatingActionButton(
      onPressed: () {
        digit = 0;
        setState(() {});
      },
      child: Icon(Icons.restart_alt),
    );
  }
}
