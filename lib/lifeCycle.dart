import 'package:flutter/material.dart';

void main() => runApp(MyApp("Hi xiaoqi"));

class MyApp extends StatefulWidget {
  String content;
  MyApp(this.content);

  @override
  createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isShowText = true;

  void increment() {
    setState(() {
      print(widget.content);
      widget.content += "d";
    });
  }

  @override
  void initState() {
    super.initState();
    print("initState");
    context.runtimeType;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(MyApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
        title: 'title',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Widget -- StatefulWidget及State"),
          ),
          body: Center(
              child: GestureDetector(
            child: isShowText ? Text(widget.content) : null,
            onTap: increment,
          )),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }
}
