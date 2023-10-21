import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => ,
      desktop: (BuildContext context) =>,
    );
  }


  Widget DesktopContainer1 (){
    return Container(
      child: Row(children: [],),
    );
  }
}
