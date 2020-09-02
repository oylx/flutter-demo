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
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget{
  @override
  createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>  with WidgetsBindingObserver{//这里你可以再回顾下，第7篇文章“函数、类与运算符：Dart是如何处理信息的？”中关于Mixin的内容
  @override
  @mustCallSuper
  void initState() {
    super.initState();
    print('initStata');
    // WidgetsBinding.instance.addObserver(this);//注册监听器
  }
  @override
  @mustCallSuper
  void dispose(){
    super.dispose();
    print('dispose');
    // WidgetsBinding.instance.removeObserver(this);//移除监听器
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    print("$state");
    if (state == AppLifecycleState.resumed) {
      print('resumed');
      //do sth
    }
    if (state == AppLifecycleState.inactive) {
      print('inactive');
      //do sth
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Hello World');
    return Text('Hello World');
  }
}