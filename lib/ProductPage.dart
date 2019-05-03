import 'package:dev/AppColors.dart';
import 'package:dev/YourCart.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => new _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Column(
      children: <Widget>[
        new Expanded(
          child: ListView(
            children: <Widget>[
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Stack(
                    children: <Widget>[
                      Container(
                          height: 357,
                          width: 375,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/shampoo.png")))),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 65),
                        child: Container(
                          height: 44,
                          width: 375,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              )),
                              IconButton(
                                  icon: Icon(
                                    Icons.shopping_basket,
                                    color: Colors.black,
                                  ),
                                  onPressed: null)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                      text: new TextSpan(
                        text: 'REF\n',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'pura d’or shampoo duo\n\n',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          new TextSpan(
                              text: 'HKD \$199\n\n',
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 18)),
                          new TextSpan(
                              text:
                                  'Lightweight conditioner with botanical extracts\nspecially chosen to protect,\nstrengthen and detangle fine or thin hair. Intensifies\nfullness, density and\nshine. Seals in volume for long lasting lift and\nflexibility while protecting\ncoloured hair from fading.\n\n+ COLOUR PRESERVE SYSTEM\n+ STRENGTHENING QUINOA PROTEIN\n+ ORGANIC CITRUS PARADISI\n\n245 ml/8,28 fl.oz.\n\nCRUELTY FREE\n100% VEGAN\n',
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    height: 1,
                    width: 336,
                    color: Colors.grey,
                  ),
                  new Row(
                    children: <Widget>[
                      _buildCol(),
                      _buildCol(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 379,
                height: 106,
                child: new BottomAppBar(
                  child: new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text('Qty'),
                                IconButton(
                                    icon: Icon(Icons.indeterminate_check_box),
                                    onPressed: null),
                                new Text('1'),
                                IconButton(icon: Icon(Icons.add_box), onPressed: null)
                              ],
                            ),
                            new Text(
                              'Enjoy Free Shipping above HKD500!',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                          padding: new EdgeInsets.all(12.0),
                          width: 163,
                          height: 48,
                          decoration: new BoxDecoration(
                            color: AppColors.c1,
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          child: new Text(
                            'Add to Cart',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
          new FlatButton(
            padding: new EdgeInsets.symmetric(vertical: .0, horizontal: .0),
            child: new Text("Go To Next page"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => YourCart()));
            },
          )
      ],
    ));
  }
}

_buildCol() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 155,
          width: 156,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/shampoo.png")),
              borderRadius: BorderRadius.circular(10)),
        ),
        new Text(
          'Shampoo',
          style: TextStyle(color: Colors.grey),
        ),
        new Text('pura d’or shampoo duo'),
      ],
    ),
  );
}
