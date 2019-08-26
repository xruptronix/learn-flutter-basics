import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SafeArea(child: Counter()),
  ));
}

class Counter  extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;

  void _increament(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: _increament,
          child: Text('Increament'),
        ),
        Text('Counter: $_counter')
      ],
    );
  }
}
