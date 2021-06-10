import 'package:easyjobs/Catergory.dart';
import 'package:easyjobs/LoginPage.dart';
//import 'package:easyjobs/Selfie.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  DateTime currdateTime = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    bool gender = true;
    //Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create Account Here",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blue,
                decoration: TextDecoration.none),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Material(
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.person),
                    hintText: "First Name",
                    filled: true,
                    fillColor: Colors.greenAccent),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Material(
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.person),
                    hintText: "Last Name",
                    filled: true,
                    fillColor: Colors.greenAccent),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          Material(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Select Gender",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue,
                        decoration: TextDecoration.none)),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(value: true, groupValue: gender, onChanged: null),
                        Text("Male",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue,
                                decoration: TextDecoration.none))
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: false,
                            groupValue: gender,
                            onChanged: (val) {
                              gender = val;
                            }),
                        Text("Female",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue,
                                decoration: TextDecoration.none))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.97,
            child: TextButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime.now())
                    .then((date) {
                  currdateTime = date;
                });
              },
              child: Row(
                children: [
                  Icon(Icons.calendar_today),
                  Text(
                    "Choose Birth Date",
                    style: TextStyle(fontSize: 12, color: Colors.lightBlue),
                  ),
                ],
              ),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size.square(20)),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.greenAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Material(
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.person),
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.greenAccent),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Material(
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.security),
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.greenAccent),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => Category());
              Navigator.push(context, route);
            },
            child: Text(
              "Next".toUpperCase(),
              style: TextStyle(fontSize: 25, color: Colors.lightBlue),
            ),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size.square(40)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(),
              Text("Already have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.lightBlue,
                      decoration: TextDecoration.none)),
              GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => LoginPage());
                  Navigator.push(context, route);
                },
                child: Text(
                  " sign in".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.lightBlue,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
