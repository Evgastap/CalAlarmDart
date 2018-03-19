import 'package:flutter/material.dart';
import 'alarmtimeui.dart';
import 'nextalarmsui.dart';
import 'get_calendar_events.dart';


void main() { runApp(new MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calendar App',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'Calendar App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () => print("You tapped settings")
            ),
        ]
      ),

      body: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              //alarmTimeUI
              new Expanded(
                flex: 1,
                child: new Material(
                  color: Colors.grey,
                  child: new AlarmTimeUi()
                )
              ),
              //nextAlarmsUI
              new Expanded(
                flex: 2,
                child: new Material(
                  child: new NextAlarmsUI()
                )
              )
            ],
          )
        ],
      ),
    );
  }
}