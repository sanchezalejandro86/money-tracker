import 'package:financeapp/widgets/transaction_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/credit_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,),
              Text("Current balance", style: TextStyle(color: Color(0xFF51515F), fontSize: 14, fontWeight: FontWeight.w400),),
              Text("\$2,090.20", style: TextStyle(color: Color(0xFF040405), fontSize: 40, fontWeight: FontWeight.w500, letterSpacing: 2)),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF0303B7),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 30,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right:30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Income", style: TextStyle(color: Colors.white),),
                              SizedBox(height: 10,),
                              Text("\$2.090,20", style: TextStyle(color: Colors.white, fontSize: 24),)
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          margin: EdgeInsets.only(right:30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Spent", style: TextStyle(color: Colors.white),),
                            SizedBox(height: 10,),
                            Text("\$1.290,20", style: TextStyle(color: Colors.white, fontSize: 24),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Text("Your cards", style: TextStyle(color: Color(0xFF51515F), fontSize: 14, fontWeight: FontWeight.w400),),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CreditCard(brand: "Visa", number: "4312"),
                  CreditCard(brand: "Master Card", number: "7973")
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Expenses", style: TextStyle(color: Color(0xFF51515F), fontSize: 14, fontWeight: FontWeight.w400),),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text("View All"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(width: 1.0, color: Color(0xFFDDDDDD)),
                    ),
                  )
                ],
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add',
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF0303B7),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
