//import 'package:easyjobs/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:easyjobs/Welcome.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose Job Types'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Column(children: [
            Divider(),
            Text(
              "Next",
              style: TextStyle(fontSize: 10),
            ),
            Icon(Icons.arrow_right_alt_outlined)
          ]),
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => Welcome());
            Navigator.push(context, route);
          },
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: ListView(
            children: [
              multipleCheckBoxListTile('Java'),
              multipleCheckBoxListTile('C++'),
              multipleCheckBoxListTile('C'),
              multipleCheckBoxListTile('Python'),
              multipleCheckBoxListTile('SQL'),
              multipleCheckBoxListTile('Game'),
              multipleCheckBoxListTile('C#'),
              multipleCheckBoxListTile('Typing'),
              multipleCheckBoxListTile('Data Entry'),
              multipleCheckBoxListTile('SEO'),
              multipleCheckBoxListTile('Investment'),
              multipleCheckBoxListTile('Unity'),
              multipleCheckBoxListTile('Unreal'),
              multipleCheckBoxListTile('R'),
              multipleCheckBoxListTile('Ruby'),
              multipleCheckBoxListTile('PHP'),
              multipleCheckBoxListTile('Laravel'),
              multipleCheckBoxListTile('Perl'),
              multipleCheckBoxListTile('Go'),
              multipleCheckBoxListTile('.Net'),
            ],
          ),
        ));
  }

  Widget multipleCheckBoxListTile(String textm) {
    return Material(
      child: CheckboxListTile(
        activeColor: Colors.blueAccent,
        checkColor: Colors.greenAccent,
        title: Text(textm),
        value: checked,
        onChanged: (bool value) {
          setState(() {
            checked = value;
          });
        },
      ),
    );
  }
}
