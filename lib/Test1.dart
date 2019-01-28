import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('first screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('launch second 1'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二个'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('go 返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
