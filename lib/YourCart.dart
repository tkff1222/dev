import 'package:dev/AppColors.dart';
import 'package:dev/AppStyle.dart';
import 'package:dev/ProductPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YourCart extends StatefulWidget {
  YourCart({Key key}) : super(key: key);

  @override
  _YourCartState createState() => new _YourCartState();
}

class _YourCartState extends State<YourCart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          SizedBox(height: kTextTabBarHeight,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black,),
                  onPressed: null,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Text('Order History',
                    style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 20,
                        color: AppColors.c1
                    ),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text('Your Cart',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                new RichText(
                  text: new TextSpan(
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Shipping: '),
                        TextSpan(text: r'$50',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black
                            )
                        )
                      ]
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildRow(),
                _buildRow(),
                _buildRow(),
                _buildRow(),
              ],
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Text('Total ',
                          style: TextStyle(
                              fontFamily: "Aenir",
                              fontSize: 16
                          ),
                        ),
                        new Text(r'HKD $678',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Aenir",
                                fontSize: 16)
                        ),
                      ],
                    ),
                    new Text('Enjoy Free Shipping above HKD500!',
                      style: TextStyle(
                          fontFamily: "Aenir",
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey
                      ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 2.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 150,
                    decoration: new BoxDecoration(color: AppColors.c1),
                    child: new Text('Check Out',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8
                      ),),
                  ),
                ),
              )
            ],
          ),
          new FlatButton(
            padding: new EdgeInsets.symmetric(vertical: .0, horizontal: .0),
            child: new Text("Go To Next page"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductPage()));
            },
          ),
        ],
      ),
    );
  }

  _buildRow() {
    return new Row(
      children: <Widget>[
        Container(
          width: 152.0,
          height: 152.0,
          decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/shampoo.png")
                ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text('pura d’or shampoo \nduo Lorum Ipson',
                  style: TextStyle(
                    fontFamily: "Aenir",
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
              SizedBox(height: 5.0),
              new Row(
                children: <Widget>[
                  new Text(
                      'Quantity:',
                      style: TextStyle(
                        fontFamily: "Aenir",
                        color: Colors.grey,
                        fontSize: 14
                      )
                  ),
                  IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: null
                  ),
                  new Text('1',style: TextStyle(color: Colors.black,
                  fontSize: 18),),
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: null
                  ),
                ],
              ),
              new Text(
                  'HKD \$199',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontFamily: "Aenir",
                      fontSize: 18
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//testtest