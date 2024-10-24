import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsin/screens/bottomnavbar.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07141C),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(),
                Text(
                  "Verify your phone number",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                // Spacer(),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const Text(
            "Whatsapp will need to verifyyour phone number. Carrier chnage may apply.",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Get.offAll(const BottomNavBarWidget());
            },
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 158, 0),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
