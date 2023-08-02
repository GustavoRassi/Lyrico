import 'dart:ffi';

import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({required this.tag_name});
  
  final String tag_name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap:() {
          null;
        },
        child: Container(
          // Padding: Space between the text and container
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Text(
              tag_name,
              style: TextStyle(
                color: Colors.white
              )
            ),
          ),
          // Set border radius and color of container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[900]
          )
        ),
        
      ),
    );
  }
}