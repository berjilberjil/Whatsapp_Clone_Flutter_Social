import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as custom_badge;

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07141C), // Set the background color here
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: AppBar(
            title: const Text(
              "Updates",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            backgroundColor: const Color(0xFF07141C),
            actions: [
              IconButton(
                icon: const Icon(Icons.qr_code, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Status",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/1.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "My status",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                        children: List.generate(10, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 11, 222, 0),
                                    width: 3,
                                  )),
                              child: const CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage("assets/images/1.jpg"),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "Cathrine",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 0.1,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Channels",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 13),
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 68, 255, 0),
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mint",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Message",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Yesterday",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                              custom_badge.Badge(
                                  badgeContent: Text("2"),
                                  badgeStyle: custom_badge.BadgeStyle(
                                    badgeColor: Colors.green,
                                    padding: EdgeInsets.all(5),
                                  )),
                            ])
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Padding(
//                       padding: const EdgeInsets.only(right: 10),
//                       child: Column(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 borderRadius: BorderRadius.circular(35),
//                                 border: Border.all(
//                                   color: const Color.fromARGB(255, 11, 222, 0),
//                                   width: 3,
//                                 )),
//                             child: const CircleAvatar(
//                               radius: 28,
//                               backgroundImage:
//                                   AssetImage("assets/images/1.jpg"),
//                             ),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.all(5.0),
//                             child: Text(
//                               "Cathrine",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.w300,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),