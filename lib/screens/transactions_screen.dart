import 'package:financeapp/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0303B7),
      ),
      backgroundColor: Color(0xFF0303B7),
      body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top:20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(46), topRight: Radius.circular(46)),
          ),
          child:
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text("Transactions", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 40),
                  Expanded(
                    child: ListView(
                      children: [
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                        TransactionTile(
                          icon: Icon(Icons.directions_car),
                          category: "Transport",
                          time: "2 min ago",
                          amount: -32,
                        ),
                      ],
                ),
                  ),
              ]
            ),
      ),
    );
  }
}
