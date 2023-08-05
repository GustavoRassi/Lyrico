import 'package:flutter/material.dart';

class PlaylistCard_widget extends StatelessWidget {
  // Constructor: Requires image and playlist name as the parameters to construct the widget
  const PlaylistCard_widget({required this.playlist_description, required this.playlist_image});

  // Variables to set the custom playlist
  final String playlist_description;
  final String playlist_image;

  @override
  Widget build(BuildContext context) {
    // This is the playlist card for the music sections.
    // The app provides playlists that the user might be interested in.
    return Padding( // Padding for space around the widget
      padding: const EdgeInsets.only(right: 15, top: 20),
      child: GestureDetector(
        child: Container(
          child: Column(
            children: [
              // Adjust the image with its properties, including image path
              Image(
                image: AssetImage(playlist_image),
                height: 170,
                width: 180,
                fit: BoxFit.cover, // Adjust the image to cover the space occupied
              ),
              // Space between the image and description
              SizedBox(height: 13,),

              // Widget structure for name and text color
              Text(
                playlist_description,
                style: TextStyle(
                  color: Colors.grey[500]
                )
              )
            ],
          ),
          // Container properties
          width: 165,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.transparent
          )
        )
      ),
    );
  }
}