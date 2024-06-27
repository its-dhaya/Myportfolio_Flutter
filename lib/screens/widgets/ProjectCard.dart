import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';

class Projectcard extends StatefulWidget {
  const Projectcard({super.key});

  @override
  State<Projectcard> createState() => _ProjectcardState();
}

class _ProjectcardState extends State<Projectcard> {

  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_)=>_onHovered (true),
      onExit: (_)=>_onHovered (false),

      child: Container(
        height: size.width*0.08,
        width: size.width*0.08,
        decoration: BoxDecoration(color: colors.valhalla.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15)
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              margin: EdgeInsets.all(50),
              
              child: Image.asset('assets/images/chattify.jpeg'),
            ),
          )
        ],),
      ),
      ),
    );
  }

  void _onHovered(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  
}
}

