import 'package:flutter/material.dart';

class YourLibrary_page extends StatefulWidget {
  const YourLibrary_page({super.key});

  @override
  State<YourLibrary_page> createState() => _YourLibrary_pageState();
}

class _YourLibrary_pageState extends State<YourLibrary_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Library Screen"),
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
    );
  }
}