import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsin/screens/phoneno.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07141C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Image.asset(
              "assets/images/welcome-icon.png",
              width: 350,
              height: 350,
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 15),
            Center(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Read our ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 255, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: ". ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'Tap "Agree and continue" to accept the \n',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 255, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  "English",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.offAll(const PhoneNumber());
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
                    "Agree and continue",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
