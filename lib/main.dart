import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                color: isToggled ? Colors.red : Colors.blue,
                borderRadius: BorderRadius.circular(isToggled ? 0 : 30),
              ),
              height: isToggled ? 100 : 200,
              width: isToggled ? 100 : 200,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  isToggled = !isToggled;
                });
              },
              color: Theme.of(context).primaryColor,
              child: Text('Toggle Container'.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
