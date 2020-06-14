import 'package:flutter/material.dart';

class ABMAccounts extends StatelessWidget {
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
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Text("Accounts", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                SizedBox(height: 40),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.attach_money, color: Colors.white),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              border: Border.all(width: 1, color: Color(0xFFDDDDDD))
                          ),
                        ),
                        title: Text("Cash", style: TextStyle(fontSize: 18),),
                        subtitle: Text("Cash"),
                        trailing: Icon(Icons.edit),
                      )
                    ],
                  ),
                )
              ]
          )
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0303B7),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: (){

        },
      ),
    );
  }
}
