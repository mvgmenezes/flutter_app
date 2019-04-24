import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Full Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(children: [
          Container(
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
          Column(
              children: _products
                  .map((elementItem) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/food.jpg'),
                            Text(elementItem)
                          ],
                        ),
                      ))
                  .toList())
        ]),
      ),
    );
  }
}
