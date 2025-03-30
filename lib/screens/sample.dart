import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  // State variables
  String selectedCountry = "India"; // Default country
  String countryCode = "+91"; // Default country code
  TextEditingController phoneController = TextEditingController();

  // Map for countries and their codes
  final Map<String, String> countryCodes = {
    "India": "+91",
    "United States": "+1",
    "United Kingdom": "+44",
    "Canada": "+1",
    "Australia": "+61",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Number Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown for selecting country
            DropdownButton<String>(
              value: selectedCountry,
              items: countryCodes.keys.map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (String? newCountry) {
                setState(() {
                  selectedCountry = newCountry!;
                  countryCode = countryCodes[selectedCountry]!;
                });
              },
            ),
            const SizedBox(height: 20),
            // Phone number input
            Row(
              children: [
                Text(
                  countryCode, // Dynamic country code
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "Enter your phone number",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Submit button
            ElevatedButton(
              onPressed: () {
                String phoneNumber = "$countryCode ${phoneController.text}";
                print("Full Phone Number: $phoneNumber");
                // Perform further actions here
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
