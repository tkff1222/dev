import 'package:dev/ProductPage.dart';
import 'package:dev/RoundUpScreen.dart';
import 'package:dev/YourCart.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Welcome to Moneybox',style: TextStyle(fontSize: 45),),
          new TextField(
            enabled: true,
            decoration: const InputDecoration(
              labelText: 'email',
              border: const OutlineInputBorder(),
            ),
            style: Theme
                .of(context)
                .textTheme
                .display1,
          ),
          new TextField(
            enabled: true,
            decoration: const InputDecoration(
              labelText: 'password',
              border: const OutlineInputBorder(),
            ),
            style: Theme
                .of(context)
                .textTheme
                .display1,
          ),
          new RaisedButton(
            child: const Text('Login'),
            color: Theme
                .of(context)
                .accentColor,
            elevation: 4.0,
            splashColor: Colors.blueGrey,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductPage()));
              // Perform some action
            },
          ),
        ],
      )
    );
  }
}
