import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/screens/widgets/ProjectCard.dart';
import 'package:myportfolio/screens/widgets/textwidget.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key,required this.tabController});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.36,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        color: colors.ebony,
        borderRadius: BorderRadius.circular(20)
      ),
      child: TabBar(
        dividerColor: Colors.transparent,
        controller: tabController,
        tabs: [
        Tab(text: "All",),
        Tab(text: "Apps",),
        Tab(text: "Web",),
        Tab(text: "Mobile",),
]),
    );
  }
}

class ProjectTabBarView extends StatelessWidget {
  final TabController tabController;
  const ProjectTabBarView({super.key,required this.tabController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return TabBarView(
      controller: tabController,
      children:[
           AllProjects(size: size)
      ] );
  }
}

class AllProjects extends StatelessWidget {
  final Size size;
  const AllProjects({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: 
      GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3/3),
        children: [
          Projectcard(),
        ],
       ),),
    );
  }
}