import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsin/screens/bottomnavbar.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String selectedCountry = "India";
  String countryCode = "+91";
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController();

  final Map<String, String> countryCodes = {
    "India": "+91",
    "United States": "+1",
    "United Kingdom": "+44",
    "Canada": "+1",
    "Australia": "+61",
    "New Zealand": "+64",
    "South Africa": "+27",
    "Nigeria": "+234",
    "Kenya": "+254",
  };

  final Map<String, int> minPhoneLength = {
    "India": 10,
    "United States": 10,
    "United Kingdom": 10,
    "Canada": 10,
    "Australia": 9,
    "New Zealand": 9,
    "South Africa": 9,
    "Nigeria": 7,
    "Kenya": 9,
  };

  final Map<String, int> maxPhoneLength = {
    "India": 10,
    "United States": 10,
    "United Kingdom": 10,
    "Canada": 10,
    "Australia": 10,
    "New Zealand": 10,
    "South Africa": 10,
    "Nigeria": 11,
    "Kenya": 10,
  };

  @override
  void initState() {
    super.initState();
    countryCodeController.text = countryCode;
    countryCodeController.addListener(updateCountryFromCode);
  }

  void updateCountryFromCode() {
    String enteredCode = countryCodeController.text.trim();

    if (!enteredCode.startsWith("+")) {
      enteredCode = "+$enteredCode";
    }

    String foundCountry = countryCodes.entries
        .firstWhere((entry) => entry.value == enteredCode,
            orElse: () => const MapEntry("Unknown", ""))
        .key;

    if (foundCountry != "Unknown") {
      setState(() {
        countryCode = enteredCode;
        selectedCountry = foundCountry;
        countryCodeController.text = countryCode;
      });
    } else {
      countryCodeController.text = countryCode; // Reset to previous valid code
    }
  }

  void navigateToNext() {
    String phoneNumber = phoneController.text.trim();

    if (phoneNumber.isEmpty) {
      showError("Please enter your phone number");
      return;
    }

    if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
      showError("Phone number must contain only digits");
      return;
    }

    int minLength = minPhoneLength[selectedCountry] ?? 7;
    int maxLength = maxPhoneLength[selectedCountry] ?? 11;

    if (phoneNumber.length < minLength || phoneNumber.length > maxLength) {
      showError(
          "Phone number should be between $minLength and $maxLength digits");
      return;
    }

    Get.offAll(const BottomNavBarWidget());
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07141C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF07141C),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Enter your phone number",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "WhatsApp will need to verify your phone number.\n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "Carrier charges may apply.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "  What's my number?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 234, 255),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: DropdownButton<String>(
                value: selectedCountry,
                dropdownColor: const Color(0xFF07141C),
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCountry = newValue!;
                    countryCode = countryCodes[selectedCountry]!;
                    countryCodeController.text = countryCode;
                  });
                },
                items: countryCodes.keys.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: const TextStyle(color: Colors.white)),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: TextField(
                      controller: countryCodeController,
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixStyle: TextStyle(color: Colors.white),
                        hintText: "+91",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: "Enter your phone number",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Material(
                color: const Color.fromARGB(255, 29, 158, 0),
                child: InkWell(
                  onTap: navigateToNext,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
