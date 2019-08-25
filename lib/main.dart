import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: SafeArea(child: MyScafold()),
      title: 'My App',
    ),
  );
}

class MyAppBar extends StatelessWidget {

  MyAppBar({this.title});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Navigation Menu',
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: 'Search',
          ),
        ],
      ),
    );
  }
}

class MyScafold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example Title',
              style:Theme.of(context).primaryTextTheme.title
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Hello World'
              ),
            ),
          ),
        ],
      ),
    );
  }
}