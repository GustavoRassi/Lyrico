import "package:flutter/material.dart";

import 'package:flutter/material.dart';

class Playlist_widget extends StatelessWidget {
  const Playlist_widget({required this.image, required this.playlist_name});

  final String image;
  final String playlist_name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5)
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover
              )
            ),
            SizedBox(width: 10),
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
        width: 50,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(5),
        )
      )
    );
  }
}