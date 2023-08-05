import "package:flutter/material.dart";

class Playlist_widget extends StatelessWidget {
  // Constructor: Requires image and playlist name as the parameters to construct the widget
  const Playlist_widget({required this.image, required this.playlist_name});

  // Variables to set the custom playlist
  final String image;
  final String playlist_name;

  @override
  Widget build(BuildContext context) {
    // This is the playlist card for the music sections.
    // The app provides playlists that the user might be interested in.
    return GestureDetector(
      child: Container(
        child: Row(
          children: [
            // Adjust the image with circular borders with ClipRRect()
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5)
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover // Adjust the image to cover the space occupied
              )
            ),
            // Space between the image and name
            SizedBox(width: 10),

            // Container for the name of the playlist
            Container(
              child: Text(
                playlist_name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              )
            )
          ]
        ),
        // Size of the playlist mini cards
        width: 50,
        height: 60,

        // Properties of the container: Color and border
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(5),
        )
      )
    );
  }
}