import 'package:dev/YourCart.dart';
import 'package:flutter/material.dart';

class RankScreen extends StatefulWidget {
  RankScreen({Key key}) : super(key: key);

  @override
  _RankScreenState createState() => new _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  bool val = true;
  String message = "This is true";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        new SizedBox(height: kTextTabBarHeight),
        new FlatButton(
          padding: new EdgeInsets.symmetric(vertical: .0, horizontal: .0),
          child: new Text("Go To Next page"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => new YourCart()));
          },
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Rank List'),
          ],
        ),
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 100,
                decoration: new BoxDecoration(
                    borderRadius:
                    new BorderRadius.all(Radius.circular(20)),
                    color: Colors.orangeAccent),
                child: new Text('this week'),
              ),
              Container(
                margin: EdgeInsets.only(left:10),
                alignment: Alignment.center,
                height: 40,
                width: 100,
                decoration: new BoxDecoration(
                    borderRadius:
                    new BorderRadius.all(Radius.circular(20)),
                    color: Colors.orangeAccent),
                child: new Text('total'),
              ),
            ],
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange),
                        child: new Icon(Icons.account_circle, size:60)
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40),
                        height: 25,
                        width: 25,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepOrangeAccent),
                        child: new Text('2'),
                      ),
                    ],
                  ),
                ),
                new Text('Ronald'),
                new Text('10.99'),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange),
                        child: new Icon(Icons.account_circle, size:60)
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40),
                        height: 25,
                        width: 25,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepOrangeAccent),
                        child: new Text('1'),
                      ),
                    ],
                  ),
                ),
                new Text('venven'),
                new Text('10.99'),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange),
                        child: new Icon(Icons.account_circle, size:60)
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40),
                        height: 25,
                        width: 25,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepOrangeAccent),
                        child: new Text('3'),
                      ),
                    ],
                  ),
                ),
                new Text('David'),
                new Text('10.99'),
              ],
            ),
          ],
        ),
        new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                    ),
                    child: new Text('4'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:7),
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                    ),
                    child: new Icon(Icons.account_circle,size:20)
                  ),
                  Container(
                    margin: EdgeInsets.only(left:7),
                    height: 20,
                    width: 250,
                    child: new Text('Cyrus'),
                  ),
                  new Text('249.90'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                    ),
                    child: new Text('5'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:7),
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                    ),
                    child: new Icon(Icons.account_circle,size:20)
                  ),
                  Container(
                    margin: EdgeInsets.only(left:7),
                    height: 20,
                    width: 250,
                    child: new Text('Cyrus'),
                  ),
                  new Text('249.90'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                    ),
                    child: new Text('6'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:7),
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                    ),
                    child: new Icon(Icons.account_circle,size:20)
                  ),
                  Container(
                    margin: EdgeInsets.only(left:7),
                    height: 20,
                    width: 250,
                    child: new Text('Cyrus'),
                  ),
                  new Text('249.90'),
                ],
              ),
            ),
          ],
        ),
        new Switch(
          value: val,
          onChanged: (bool e) => something(e),
          activeColor: Colors.green,
        ),
        new Text(message),
      ],
    )
    );
  }

  void something(bool e) {
    setState(() {
      if (e) {
        message = "This is true";
        val = true;
        e = true;
      } else {
        message = "This is false";
        val = false;
        e = false;
      }
    });
  }
}
