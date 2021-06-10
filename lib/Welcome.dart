import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome To EasyJobs",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                decoration: TextDecoration.none),
          ),
          Divider(),
          Lottie.asset('assets/wait.json'),
          Text(
            "Please Wait for Confirmation Notification & Email.",
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                decoration: TextDecoration.none),
          ),
          Divider(),
          Text(
            "Thanks for Your Patience!!!",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
