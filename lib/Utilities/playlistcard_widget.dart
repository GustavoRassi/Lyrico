import 'package:flutter/material.dart';

class PlaylistCard_widget extends StatelessWidget {
  const PlaylistCard_widget({required this.playlist_description, required this.playlist_image});

  final String playlist_description;
  final String playlist_image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 20),
      child: GestureDetector(
        child: Container(
          child: Column(
            children: [
              Image(
                image: AssetImage(playlist_image),
                height: 170,
                width: 180,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 13,),
              Text(
                playlist_description,
                style: TextStyle(
                  color: Colors.grey[500]
                )
              )
            ],
          ),
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