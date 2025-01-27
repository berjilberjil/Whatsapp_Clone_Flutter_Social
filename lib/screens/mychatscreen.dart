import 'package:flutter/material.dart';


class Mychatscreen extends StatelessWidget {
  const Mychatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF07141C),
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              
              return [
                
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New group",style: TextStyle(color: Colors.white),),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
                const PopupMenuItem(
                  value: "WhatsApp Web",
                  child: Text("WhatsApp Web",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
              ];
            },
            color: const Color.fromARGB(255, 8, 23, 33),
            iconColor: Colors.white,),
          ],
          backgroundColor: const Color(0xFF07141C),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Berjil (You)",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "Message yourself",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
            child: ListView(
// Display chat messages here
                ),
          ),
          
          ],
        ),
        
        );
  }
}
