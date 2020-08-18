import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        initialRoute: '/First',
        routes: {
          '/First': (context) => FirstPage(),
          "/Second": (context) => SecondPage()
        },
        home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Route -- FirstPage"),
      ),
      body: RaisedButton(
        child: Text("JUMP SecondRoute"),
        onPressed: () {
          _jumpToSecondPage(context);
        },
      ),
    );
  }

  _jumpToSecondPage(BuildContext context) async {
    var passArgumnets = await Navigator.pushNamed(context, '/Second',
        arguments: PassArgumnets('Data from FirstPage Navigator.pushNamed()'));
    print('here');
    print(passArgumnets);
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PassArgumnets passArgumnets =
        ModalRoute.of(context).settings.arguments;

    print(passArgumnets.content);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Route -- SecondPage"),
      ),
      body: RaisedButton(
        child: Text("Go back!"),
        onPressed: () {
          Navigator.pop(context, PassArgumnets('Return Data from SecondPage'));
        },
      ),
    );
  }
}

class PassArgumnets {
  String content;

  PassArgumnets(this.content);
}