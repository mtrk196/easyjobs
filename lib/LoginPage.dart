import 'package:easyjobs/HomePage.dart';
import 'package:easyjobs/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login".toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blue,
                decoration: TextDecoration.none),
          ),
          Container(
              height: size.height * 0.5,
              width: size.width,
              child: Lottie.asset('assets/login.json')),
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
                    hintText: "Your Email",
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
              Route route = MaterialPageRoute(builder: (context) => HomePage());
              Navigator.push(context, route);
            },
            child: Text(
              "Login".toUpperCase(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have account?",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.lightBlue,
                      decoration: TextDecoration.none)),
              GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => SignUp());
                  Navigator.push(context, route);
                },
                child: Text(
                  "SignUp".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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

  /*void _togglePassword() {
    setState(() {
      hiddenPassword = !hiddenPassword;
    });
  }*/
}
