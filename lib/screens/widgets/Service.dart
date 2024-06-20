import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/screens/widgets/textwidget.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 15, vertical:20),
            duration: Duration(microseconds: 300),
            curve: Curves.easeInOut,
            margin: EdgeInsets.symmetric(horizontal: widget.size.width*0.05),
            width: widget.size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
             color:  _isHovered[index]?null:Colors.transparent,
             border: Border.all(
               color:_isHovered[index]?colors.studio.withOpacity(0.5):Colors.transparent
             ),
              gradient: _isHovered[index]? LinearGradient(colors:[
                colors.studio,
                colors.ebony
              ]):null,
            ),
            child:widget.size.width>600?
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(sSize: widget.size, text:"${index+1}",size: 25,color: Colors.white,),
                SizedBox(width: widget.size.height*0.04,),
                TextWidget(sSize: widget.size,text: 'Designs',size: 20,color: Colors.white,),
                SizedBox(width: widget.size.height*0.04,),
                Flexible(
                  child: TextWidget(sSize: widget.size,text: 'Projects shows the enrollment and effectiveness that made during the implementation of it. The providence of the product will be sure and Quality of service ',
                  size: 15,color: Colors.white,),
                  
                ),
                SizedBox(width: 4,),
                FaIcon(_isHovered[index]?
                FontAwesomeIcons.arrowTrendUp:FontAwesomeIcons.arrowTrendDown,
                
                color: _isHovered[index]?Colors.white:colors.studio,
                ),
                SizedBox(width: widget.size.height*0.04,),
          
              ],
            ):
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(sSize: widget.size, text:"${index+1}",size: 25,color: Colors.white,),
                SizedBox(width: widget.size.height*0.04,),
                TextWidget(sSize: widget.size,text: 'Designs',size: 22,color: Colors.white,),
                SizedBox(width: widget.size.height*0.04,),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                     TextWidget
                     
                     (
                      alignment: TextAlign.center,
                      sSize: widget.size,text: 'Projects shows the enrollment and effectiveness that made during the implementation of it. The providence of the product will be sure and Quality of service ',
                  size: 15,color: Colors.white,),
                  ],
                ),


                SizedBox(width: widget.size.height*0.04,),
          
              ],
            )
          ),
         );
      } 
      );
  }
}