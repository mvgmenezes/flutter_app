import 'package:flutter/material.dart';

import './products.dart';

//stateful pois planejo que ele gerencie a lista de produtos e mudar isso
class ProductsManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {

  List<String> _products = ['Full Tester'];

  @override
  Widget build(BuildContext context) {

    return Column(children: [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            //dizendo pro flutter que estou alterando o state
            setState(() {
              _products.add('Advanced full tester');
            });
          },
          child: Text('Add Product'),
        )),
        Products(_products)
        ]); 
  }
}
