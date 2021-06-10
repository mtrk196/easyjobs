import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            Text("Name"),
            Text("Email"),
            Text("Responsibility"),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Transaction'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Total Income'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
