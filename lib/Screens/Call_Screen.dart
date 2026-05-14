import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Center(
        child: Text("Calls", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
