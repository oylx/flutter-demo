import 'package:flutter/material.dart';

void main() => runApp(MyApp("Hello World123"));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String content;

  MyApp(this.content);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Center(
          child: Text(content),
        ),
      )
    );
  }
}
