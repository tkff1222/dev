import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key key}) : super(key: key);

  @override
  _QuestionScreenState createState() => new _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new Column(
        children: <Widget>[
          SizedBox(height: kTextTabBarHeight),
          new Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
              new Text(
                'Next One',
                style: new TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                child: new Image.network(
                  'https://media.istockphoto.com/photos/woman-using-a-touch-screen-finding-informations-online-in-london-city-picture-id934696812',
                ),
              ),
            ),
          ),
          SizedBox(height: 6.0),
          new Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Tang', style: TextStyle(fontSize: 20.0)),
                      Row(
                        children: <Widget>[
                          new Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                          new Icon(
                            Icons.ac_unit,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Expanded(child: new Container()),
          new Row(
            children: <Widget>[
              new Container(
                width: 200.0,
                height: 80.0,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blueAccent,
                    border: new Border(
                        bottom: new BorderSide(
                            width: 1.0, color: const Color(0xff999999)))),
                child: new Text(
                  'here is ',
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              new IconButton(
                  icon: Icon(Icons.notifications), onPressed: () => {}),
            ],
          ),
          new Expanded(child: new Container()),
        ],
      ),
    );
  }
}
