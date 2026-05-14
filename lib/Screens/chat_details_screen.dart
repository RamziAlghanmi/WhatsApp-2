import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({super.key, required this.name, required this.imagePath});
  final String name;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 40, 44, 59),

          title: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
              SizedBox(width: 10),
              CircleAvatar(foregroundImage: AssetImage(imagePath)),
              SizedBox(width: 10),
              Text(name, style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(width: 135),
              Icon(Icons.call, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
