import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsin/screens/archived.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07141C),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            title: const Text(
              "WhatsIn",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
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
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SearchBar(
                  hintText: "Ask Meta AL or Search",
                  leading: Icon(
                    Icons.circle_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const ArchivedChat());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.archive,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Archived",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "10",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 81, 208, 3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap:
                    true, // Makes ListView inside Column scroll correctly
                physics:
                    const NeverScrollableScrollPhysics(), // Disables ListView scroll to avoid conflict
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Berjil (You)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Message",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   color: const Color(0xFF07141C),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(
      //         icon: const Icon(Icons.chat, color: Colors.white),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.circle_sharp, color: Colors.white),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.group, color: Colors.white),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.call, color: Colors.white),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
