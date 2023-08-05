import 'package:flutter/material.dart';
import 'package:spotify_app/Utilities/playlist.dart';
import 'package:spotify_app/Utilities/playlistcard_widget.dart';
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
              ),
              SizedBox(height: 25),
              // 3rd index
              // Elements:
              // - Table of the most listened playlists (up to a 3x2 table of playlists)
              Table(
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Playlist_widget(
                          image: 'lib/Images/austin-cover-1.png',
                          playlist_name: 'Post Malone',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Playlist_widget(
                          image: 'lib/Images/austin-cover-1.png',
                          playlist_name: 'Post Malone',
                        ),
                      )
                    ]
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Playlist_widget(
                          image: 'lib/Images/austin-cover-1.png',
                          playlist_name: 'Post Malone',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Playlist_widget(
                          image: 'lib/Images/austin-cover-1.png',
                          playlist_name: 'Post Malone',
                        ),
                      )
                    ]
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Playlist_widget(
                          image: 'lib/Images/austin-cover-1.png',
                          playlist_name: 'Post Malone',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Playlist_widget(
                          image: 'lib/Images/austin-cover-1.png',
                          playlist_name: 'Post Malone',
                        ),
                      )
                    ]
                  ),
                ],
              ),
              SizedBox(height: 25),
              // ⁡⁢⁢⁢4th⁡ index
              // Elements:
              // - Music sections/categories (eg. Your Top Mixes, etc.)
              Text(
                // Music section title
                'Your Top Mixes',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              // List of playlists created by the app, based on user's interests
              Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PlaylistCard_widget(
                      playlist_description: 'Post Malone, 6ix9ine, Khelani and more',
                      playlist_image: 'lib/Images/austin-cover-1.png'
                    ),
                    PlaylistCard_widget(
                      playlist_description: 'Post Malone, 6ix9ine, Khelani and more',
                      playlist_image: 'lib/Images/austin-cover-1.png'
                    ),
                    PlaylistCard_widget(
                      playlist_description: 'Post Malone, 6ix9ine, Khelani and more',
                      playlist_image: 'lib/Images/austin-cover-1.png'
                    ),
                    PlaylistCard_widget(
                      playlist_description: 'Post Malone, 6ix9ine, Khelani and more',
                      playlist_image: 'lib/Images/austin-cover-1.png'
                    )
                  ]
                ),
                height: 245
              )
            ],
          ),
        ),
      )
    );
  }
}