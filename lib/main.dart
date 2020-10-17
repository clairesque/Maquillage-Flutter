import 'package:flutter/material.dart';
import 'package:makeup_app/app/models/product_model.dart';
import 'package:makeup_app/app/services/api.dart';

void main() {
  runApp(new MaterialApp(
    home: new JsonParseDemo(),
  ));
} 

class JsonParseDemo extends StatefulWidget {
  //
  JsonParseDemo() : super();

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  //
  List<ProductModel> _productModel;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Api.getProductList().then((productModel) {
      setState(() {
        _productModel = productModel;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.black), onPressed: () {})
          ],
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
          title: Text(
            "maquillage",
            style: TextStyle(color: Colors.tealAccent, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: null == _productModel ? 0 : _productModel.length,
          itemBuilder: (context, index) {
            ProductModel product = _productModel[index];
            return ListTile(
              title: Text(product.brand),
              subtitle: Text(product.name),
            );
          },
        ),
      ),
      ),
    );
    
  }
}

/*
void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  /*List data;

  Future<List> getData() async {
    var response = await http.get(
        Uri.encodeFull(
            "http://makeup-api.herokuapp.com/api/v1/products.json"),
        headers: {
          "Accept": "application/json",
        });
    data = json.decode(response.body);
    print(data);

    return ["hi"];

    
  } */

  Future<List<ProductModel>> productList;

  Api _api;
  @override
  void initState() {
    super.initState();
    _api = Api();
    productList = _api.getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.black), onPressed: () {})
          ],
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
          title: Text(
            "maquillage",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5.0),
              height: 61,
              child: FutureBuilder(
                  future: productList,
                  builder: (context, snapshot) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, id) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.red,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 2.5,
                                )
                              ],
                            ),
                          );
                        });
                  }),
            )
          ]),
        ),
      ),
    );
  }
}*/
