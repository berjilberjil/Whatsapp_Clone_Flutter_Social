import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            title: Title(
              color: const Color(0xFF07141C),
              child: const Text(
                "WhatsIn",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            backgroundColor: const Color(0xFF07141C),
            actions: [
              IconButton(
                icon: const Icon(Icons.qr_code,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () {},
              ),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Flexible(
                  child: Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: SearchBar(
                  // Correct hex color usage
                  hintText: "Ask Meta AL or Search",
                  leading: Icon(
                    Icons.circle_outlined,
                    color: Colors.blue,
                    weight: double.minPositive,
                  ),
                ),
              )),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Get.to(const ArchivedChat());
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.archive,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Archived",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 250),
                    child: Text(
                      "10",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 81, 208, 3)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
