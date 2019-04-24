import 'package:flutter/material.dart';


//usando o stateless pois so deve ser acessado pelo os produtos internos
class Products extends StatelessWidget {
  final List<String> products;

  //usnado o construtor para receber os produtos
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            children: products
                .map((elementItem) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'),
                          Text(elementItem)
                        ],
                      ),
                    ))
                .toList())
      ],
    );
  }
}
