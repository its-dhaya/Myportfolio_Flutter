import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';

class ServicesWidget extends StatefulWidget {
  final Size size ;
  const ServicesWidget({super.key,required this.size});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
List<bool> _isHovered = [false,false,false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder:(context,index){
         return MouseRegion(
          onEnter: (_)=>setState(() =>
          _isHovered[index] = true 
          ),
          onExit: (_)=>setState(() =>
          _isHovered[index] = false,
          ),
          child: AnimatedContainer(
            padding: EdgeInsets.all(5),
            duration: Duration(microseconds: 300),
            curve: Curves.easeInOut,
            margin: EdgeInsets.symmetric(horizontal: widget.size.width*0.015),
            height: widget.size.height*0.18,
            width: widget.size.width,
            decoration: BoxDecoration(
             color:  _isHovered[index]?null:Colors.transparent,
             border: Border.all(
               color:_isHovered[index]?colors.studio.withOpacity(0.5):Colors.transparent
             ),
              gradient: _isHovered[index]? LinearGradient(colors:[
                colors.studio,
                colors.ebony
              ]):null,
            ),
          ),
         );
      } 
      );
  }
}