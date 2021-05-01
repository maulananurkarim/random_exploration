import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text("Profile Picture"),
          SizedBox(
            height: 50,
          ),
          Image.asset("primary.png"),
          SizedBox(
            height: 16,
          ),
          Text("Anne Margaritha"),
          SizedBox(
            height: 4,
          ),
          Text("UX Designer"),
          Row(
            children: [
              Image.asset("item-1.png"),
              Image.asset("item-2.png"),
              Image.asset("item-3.png"),
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Image.asset("item-4.png"),
              Image.asset("item-5.png"),
              Image.asset("item-6.png"),
            ],
          ),
          SizedBox(height: 70),
          ElevatedButton(
            onPressed: () {},
            child: Text("Update Profile"),
          ),
        ],
      ),
    );
  }
}
