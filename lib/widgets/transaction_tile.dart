import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {

  Icon icon;
  String category;
  String time;
  double amount;

  TransactionTile({Key key, this.icon, this.category, this.time, this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        child: this.icon,
        decoration: BoxDecoration(
          color: Color(0xFFF9F9FB),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(width: 1, color: Color(0xFFDDDDDD))
        ),
      ),
      title: Text(this.category, style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(this.time),
      trailing: Text("\$${this.amount}", style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
