import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
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
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/aditya.jpeg"),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
                child: Text(
              "@$username",
              style: kSubTitleText,
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      //Code to launch resume
                    },
                    child: Text(
                      "View Resume",
                      style: kSubTitleText,
                    )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      //Call to launch email
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Experience",
                            style: kSectionTitleText,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(aboutWorkExperience),
                          Divider(),
                          Text("About Me", style: kSectionTitleText),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(aboutMeSummary),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Location",
                                      style: kSubTitleText,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          location,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Website",
                                      style: kSubTitleText,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(website),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.launch,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Portfolio",
                                      style: kSubTitleText,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(portfolio),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.launch,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Email",
                                      style: kSubTitleText,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(email),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.launch,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 3),
                    itemCount: projectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectWidget(
                        projectData: projectList[index],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
