import 'package:flutter/material.dart';
import 'package:merokharcha/models/transction.dart';
import 'package:merokharcha/widget/transctionlist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mero kharcha",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final name = TextEditingController();
  final amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mero Kharcha"),
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      controller: name,
                      decoration: InputDecoration(labelText: "Enter Name"),
                    ),
                    TextField(
                      controller: amount,
                      decoration: InputDecoration(labelText: "Enter amount"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          print(name.text);
                          print(amount.text);
                        },
                        child: Text(
                          "Add Transaction",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ),
            ),
            TransactionList()
          ],
        ));
  }
}
