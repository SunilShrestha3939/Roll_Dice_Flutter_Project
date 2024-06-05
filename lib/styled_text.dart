import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText( this.text, {super.key});  //accept text
  final String text;  //store text

  @override
  Widget build(context){
    return  Text(
               text ,   //use text
              style: const TextStyle(
                color: Color.fromARGB(255, 245, 200, 200),
                fontSize: 28.25,
              ),
            );
  }
} 