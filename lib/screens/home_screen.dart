import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/aditya.jpeg"),
                  ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Experience"),
                    Text(
                        "I specialise in UI/UX design, brand strategy, webflow development."),
                    Divider(),
                    Text("About Me"),
                    Text("I am a Product Designer."),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Location"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 16,
                                  ),
                                  Text("Delhi, India")
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Website"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("adityathakur.in"),
                                  Icon(
                                    Icons.launch,
                                    size: 16,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Portfolio"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("@adityathakurxd"),
                                  Icon(
                                    Icons.launch,
                                    size: 16,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Email"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("mail@adityathakur.in"),
                                  Icon(
                                    Icons.launch,
                                    size: 16,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 340 * 2,
              height: 160,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 300,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectWidget();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
