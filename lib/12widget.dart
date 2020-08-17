import 'package:flutter/material.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "Flutter UI基础Widget -- 文本",
        )),
        body: Center(
            child: Text("Hello Flutter",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  background: new Paint()..color = Colors.yellow,
                  decorationStyle: TextDecorationStyle.solid,
                ))),
      ),
    );
  }
}
