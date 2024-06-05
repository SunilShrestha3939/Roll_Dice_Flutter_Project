import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// import 'package:first_app/styled_text.dart';


const startAlignment = Alignment.topLeft;
const  endAlignment = Alignment.bottomRight;

 class GradientContainer extends StatelessWidget {
//  GradientContainer({key}): super(key: key);
   const GradientContainer({super.key, required this.colors}); //constructor 

  final List<Color> colors;

  

  @override   //states that we are overwriting a method that is expected by Stateless widget
  Widget build(context){  //here widget is return type of build method
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors, 
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center( 
            child: DiceRoller(),
          ),
        );
  }
}

  