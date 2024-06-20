import 'package:flutter/material.dart';
import 'package:myportfolio/screens/desktop/desktop.dart';
import 'package:myportfolio/screens/mobile/mobile.dart';
import 'package:myportfolio/screens/tablet/tablet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context,constraints){
      if(constraints.maxWidth>950){
        return Desktoplayout();
      }
      else if(constraints.maxWidth>450){
        return TabletLayout();
  
    }else{
      return MobileLayout();
    }
    }
    );
  }
}