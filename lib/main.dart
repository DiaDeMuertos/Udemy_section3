import 'package:flutter/material.dart';
import 'helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy course',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter & Dart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: CustomBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: CustomSizedBox(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: CustomSizedBoxDobleTap(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: CustomSizedBoxLongPress(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: CustomSizedBoxVerticalDrag(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
