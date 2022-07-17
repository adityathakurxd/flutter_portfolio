import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(imagePath),
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
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      //Code to launch resume
                      final Uri _url = Uri.parse(resumeLink);
                      await launchUrl(_url);
                    },
                    child: Text(
                      "View Resume",
                      style: kSubTitleText,
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: contactEmail,
                      );
                      await launchUrl(emailLaunchUri);
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
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1200
                    ? Row(
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
                                const Divider(),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                      )
                    : Column(
                        children: [
                          Column(
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
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                        ],
                      ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1000
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 3),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                          );
                        })
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 2),
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
