import 'package:flutter/material.dart';

//Custom widgets
import 'UniversitysListView.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universities List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Universities List'),
        ),
        body: Center(
            child: JobsListView()
        ),
      ),
    );
  }
}