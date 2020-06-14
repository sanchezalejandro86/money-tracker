import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {

  String brand;
  String number;

  CreditCard({Key key, this.brand, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: Color(0xFFDDDDDD)),
            color: Color(0xFFF9F9FB),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: ListTile(
            leading: Stack(
              children: [
                Container(
                  width: 70,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: this.brand == "Visa" ? Color(0xFF040405) :  Color(0xFF0303B7),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("**** ${this.number}", style: TextStyle(color: Colors.white),),
                  ),
                )
              ]
            ),
            title: Text("\$1,020.92", style: TextStyle(fontSize: 18),),
            subtitle: Text(this.brand, style: TextStyle(fontSize: 14, color: Color(0xFF9B9DB1)),),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
      ]
    );
  }
}
