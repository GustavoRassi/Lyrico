import 'package:flutter/material.dart';
import 'package:spotify_app/Utilities/tag.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main content displayed on the screen
      // SafeArea will ensure that notches or anything else don't
      // cover any content.
      body: SafeArea(
        child: Padding(
          // Space between the content and the screen edges
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: ListView(
            children: [
              // ⁡⁢⁢⁡⁢⁢⁢1st⁡⁡ index
              // Elements:
              // - Welcome message
              // - Icons: notifications, recently played & settings
              Row(
                children: [
                  Text(
                    "Good morning",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21
                    )
                  ),
                  SizedBox(width: 96),
                  IconButton(
                    onPressed: () {
                      
                    },
                    icon: Icon(Icons.notifications),
                    iconSize: 35,
                    color: Colors.white
                  ),
                  IconButton(
                    onPressed: () {
                      
                    },
                    icon: Icon(Icons.history_rounded),
                    iconSize: 35,
                    color: Colors.white
                  ),
                  IconButton(
                    onPressed: () {
                      
                    },
                    icon: Icon(Icons.settings),
                    iconSize: 35,
                    color: Colors.white
                  )
                ],
              ),
              // Space between the elements
              SizedBox(height: 15),
              // ⁡⁢⁢⁢2nd⁡ index
              // Elements:
              // - Tags: Music, Podcasts & Shows, Audiobooks
              //         Created a class for the widget structure to simply call it
              //         everytime we need it.
              Row(
                children: [
                  TagWidget(tag_name: "Music"),
                  TagWidget(tag_name: "Podcasts & Shows"),
                  TagWidget(tag_name: "Audiobooks")
                ]
              )
            ],
          ),
        ),
      )
    );
  }
}