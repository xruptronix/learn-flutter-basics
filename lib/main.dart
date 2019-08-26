import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SafeArea(child: Counter()),
  ));
}

class CounterDisplay extends StatelessWidget {
  
  CounterDisplay({this.count});

  final int count;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Count: $count'));;
  }
}

class CounterIncreamenter extends StatelessWidget {

  CounterIncreamenter({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increament'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;
  
  void _increament(){
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CounterIncreamenter(onPressed: _increament,),
        CounterDisplay(count: _counter,)
      ],
    );
  }
}