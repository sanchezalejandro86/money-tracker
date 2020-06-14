import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0303B7),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top:20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(46), topRight: Radius.circular(46)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text("New Expenses", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "\$0.00",
                        hintStyle: TextStyle(fontSize: 40.0, color: Colors.grey, letterSpacing: 2),
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Color(0xFF040405), fontSize: 40.0),
                    autofocus: true,
                    //controller: amountController,
                  ),
                  SizedBox(height: 10,),
                  Text("Type here"),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Description",
                      hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey),
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Color(0xFF040405), fontSize: 18.0),
                    //controller: amountController,
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
      backgroundColor: Color(0xFF0303B7),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Navigator.pop(context);
        },
        tooltip: 'Add Expense',
        child: Icon(Icons.check),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
