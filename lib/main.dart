import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
 
void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors:  [Color.fromARGB(255, 51, 181, 246),
                    Color.fromARGB(255, 11, 3, 247)]
          ),
      ),
    ),
  ); // show some user interface on screen
}

