import 'package:easyjobs/Account.dart';
import 'package:easyjobs/Chat.dart';
import 'package:easyjobs/Home.dart';
import 'package:easyjobs/Invest.dart';
import 'package:easyjobs/Job.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> _children = [Home(), Account(), Chat(), Job(), Invest()];

  void onTappedItem(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EasyJobs"),
      ),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Padding(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 60,
                          width: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Empolyee Name',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text('Job Description', style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(6),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Another Option'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Another Option'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Another Option'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Another Option'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        onTap: onTappedItem,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.green,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp),
              backgroundColor: Colors.blue,
              label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              backgroundColor: Colors.grey,
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              backgroundColor: Colors.black,
              label: 'My Jobs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business),
              backgroundColor: Colors.teal,
              label: 'Invest'),
        ],
      ),
    );
  }
}
