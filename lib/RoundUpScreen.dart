import 'package:dev/LoginScreen.dart';
import 'package:flutter/material.dart';

class RoundUpScreen extends StatefulWidget {
  RoundUpScreen({Key key}) : super(key: key);

  @override
  _RoundUpScreenState createState() => new _RoundUpScreenState();
}

class _RoundUpScreenState extends State<RoundUpScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            child: const Text('Go Back'),
            color: Theme
                .of(context)
                .accentColor,
            elevation: 4.0,
            splashColor: Colors.blueGrey,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginScreen()));
              // Perform some action
            },
          )
        ],
      )
    );
  }
}
