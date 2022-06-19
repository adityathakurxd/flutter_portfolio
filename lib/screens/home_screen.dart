import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Untitled UI",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        // foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.lightBlue,
                  Colors.pinkAccent,
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/aditya.jpeg"),
              ),
            ),
          ),
          Center(child: Text("Aditya Thakur")),
          Center(child: Text("@adityathakurxd")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: () {}, child: Text("View Portfolio")),
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [Icon(Icons.add), Text("Follow")],
                  ))
            ],
          ),
          Text("Experience"),
          Text(
              "I specialise in UI/UX design, brand strategy, webflow development."),
          Divider(),
          Text("About Me"),
          Text("I am a Product Designer."),
        ],
      ),
    );
  }
}
