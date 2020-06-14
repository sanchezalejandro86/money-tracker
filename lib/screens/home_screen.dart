import 'package:financeapp/screens/add_expense_screen.dart';
import 'package:financeapp/screens/transactions_screen.dart';
import 'package:financeapp/widgets/credit_card.dart';
import 'package:financeapp/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        //leading: Icon(Icons.menu, color: Colors.black,),
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
                    child: InkWell(
                      child: Text("View All"),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionsScreen()));
                      },
                    ),
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
      floatingActionButton: _getFAB(),
      drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Money\nTracker', style: TextStyle(color: Colors.white, fontSize: 40),),
                decoration: BoxDecoration(
                  color: Color(0xFF6E7382),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Accounts', style: TextStyle(fontSize: 20),),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Credit Cards', style: TextStyle(fontSize: 20),),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Categories', style: TextStyle(fontSize: 20),),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Labels', style: TextStyle(fontSize: 20),),
                onTap: () {
                },
              ),
            ],
          ),
      ),
    );
  }

  _getFAB(){
    return SpeedDial(
      // both default to 16
      marginRight: 18,
      marginBottom: 20,
      //animatedIcon: AnimatedIcons.add_event,
      //animatedIconTheme: IconThemeData(size: 22.0),
      // this is ignored if animatedIcon is non null
      child: Icon(Icons.add),
      visible: true,
      // If true user is forced to close dial manually
      // by tapping main button and overlay is not rendered.
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Color(0xFF0303B7),
      foregroundColor: Colors.white,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
          child: Icon(Icons.arrow_downward),
          backgroundColor: Colors.green,
          label: 'Add Income',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => {
          },
        ),
        SpeedDialChild(
            child: Icon(Icons.arrow_upward),
            backgroundColor: Colors.red,
            label: 'Add Expenses',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddExpenseScreen()),
              )
            }
        ),
      ],
    );
  }
}