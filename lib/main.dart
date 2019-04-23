import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Add Product'),
              )
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text('Food Paradaise')
                ],
              ),
            )
        ]),
      ),
    );
  }
}
