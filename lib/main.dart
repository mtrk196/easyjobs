import 'package:easyjobs/LoginPage.dart';
import 'package:easyjobs/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Jobs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EasyJobs(),
    );
  }
}

class EasyJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.blue]),
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue,
                  decoration: TextDecoration.none),
            ),
            Lottie.asset('assets/easy.json'),
            Divider(),
            TextButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => LoginPage());
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
                          borderRadius: BorderRadius.circular(10)))),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => SignUp());
                Navigator.push(context, route);
              },
              child: Text(
                "signup".toUpperCase(),
                style: TextStyle(fontSize: 25, color: Colors.lightBlue),
              ),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size.square(40)),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.greenAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
            )
          ],
        ));
  }
}
