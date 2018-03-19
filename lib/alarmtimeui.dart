import 'package:flutter/material.dart';

class AlarmTimeUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            height: 75.0, width: 150.0, padding: const EdgeInsets.all(5.0), color: Colors.white, 
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Your alarm is set for: ",style: new TextStyle(color: Colors.deepOrangeAccent[700], fontSize: 14.3),),
                new Text("HH" + ':' + 'MM', style: new TextStyle(color: Colors.amber[900], fontSize: 40.0, fontWeight: FontWeight.bold),)
              ],
            )
          ),
          new Container(
            alignment: Alignment.center,
            height: 25.0, color: Colors.grey[200], width: 150.0,
            child: new Text("eventname", style: new TextStyle(),),
          )
        ],
      )
    );
  }
}