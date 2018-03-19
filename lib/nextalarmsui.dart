import 'package:flutter/material.dart';
import 'get_calendar_events.dart';

class NextAlarmsUI extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            color: Colors.grey, margin: const EdgeInsets.all(10.0),
            child: new Text("Container 1")
          ),
          new Container(
            color: Colors.grey, margin: const EdgeInsets.all(10.0),
            child: new Text("Container 2")
          ),
          new Container(
            color: Colors.grey, margin: const EdgeInsets.all(10.0),
            child: new Text("Container 3")
          ),
          new Container(
            color: Colors.grey, margin: const EdgeInsets.all(10.0),
            child: new Text("Container 4")
          ),
          new Container(
            color: Colors.grey, margin: const EdgeInsets.all(10.0),
            child: new Text("Container 5")
          ),
          new Container(
            color: Colors.grey, margin: const EdgeInsets.all(10.0),
            child: new MaterialButton(
              onPressed: () => GetCalendarEvents,
              child: new Text("GetCalendarEvents"),
            )
          ),
        ],
      )
    );
  }
}