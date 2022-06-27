import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 140,
      child: Card(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(),
                  Column(
                    children: [Text("Lead Flutter Developer"), Text("yers")],
                  )
                ],
              ),
              Text("May 2020 - Present"),
              Divider(),
              Align(
                  alignment: Alignment.bottomRight,
                  child:
                      TextButton(onPressed: () {}, child: Text("View Project")))
            ]),
      ),
    );
  }
}
