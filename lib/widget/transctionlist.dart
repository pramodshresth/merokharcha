import 'package:flutter/material.dart';
import '../models/transction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transction> userTransction = [
    Transction(id: "t1", title: "Book", amount: 500.999, date: DateTime.now()),
    Transction(id: "t2", title: "Masu", amount: 800.99, date: DateTime.now()),
    Transction(id: "t2", title: "Masu", amount: 800.99, date: DateTime.now()),
    Transction(id: "t2", title: "Masu", amount: 800.99, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...userTransction.map((tx) {
          return Card(
              child: Row(
            children: [
              Container(
                width: 120,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(20),
                child: Text(
                  "Rs " + tx.amount.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    // border: Border.all(
                    //   // color: Colors.blue,
                    //   width: 2,
                    // ),
                    borderRadius: BorderRadius.circular(123)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        tx.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ));
        }).toList()
      ],
    );
  }
}
