import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'dart:math' as math;

class Rotatingimage extends StatefulWidget {
  const Rotatingimage({super.key});

  @override
  State<Rotatingimage> createState() => _RotatingimageState();
}

class _RotatingimageState extends State<Rotatingimage> {
  bool isMovered =false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_)=> setState(
        ()=>isMovered = true),
        onExit: (_)=> setState(
          ()=>isMovered = false),

          child: AnimatedContainer(duration: Duration(microseconds: 300),
          transform: Matrix4.rotationZ(isMovered?0:math.pi/36),
          height: size.width*0.24,
          width: size.width*0.24,
          
          decoration: BoxDecoration(
            image:DecorationImage(
              fit:BoxFit.cover,
              image: AssetImage('assets/images/Designer.jpeg')
              ),
              border: Border.all(color: colors.studio,width: 1.2),
              borderRadius: BorderRadius.circular(20)
          ),
          ),
    );
  }
}