import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Center(
          child: MaterialButton(
        child: Text('Go to Screen Two'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenTwo()),
          );
        },
        color: Colors.indigo,
        textColor: Colors.white,
      )),
    );
  }
}

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: MaterialButton(
        child: Text('Go back to Screen One'),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.purple,
        textColor: Colors.white,
      )),
    );
  }
}
