import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});//accept the key parameter and forward to super class

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice(){
    var diceRoll = Random().nextInt(6)+1;//1-6

    setState(() {     //anonymous function
                      //tells fulutter to re-execute the build function of the state in which we call 'setstate' 
      activeDiceImage = 'assets/images/dice-$diceRoll.png'; //update in class variable 'diceRoll'
    });
  }

  @override
  Widget build(context){
    return Column(   //takes vertical space
              mainAxisSize: MainAxisSize.min,//minimal vertical space
              children: [
                Image.asset(
                  activeDiceImage, 
                  width: 200
                ),
                const SizedBox(height: 10),//box betwn two widget
                TextButton(
                  onPressed: rollDice,//pointer to function rollDice() 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 20),//gap betwn widget content and its boundaries
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )
                  ),
                  child: const Text('Roll Dice'), 
                ),
              ],
            );

  }
}
