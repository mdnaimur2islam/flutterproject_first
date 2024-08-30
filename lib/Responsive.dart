
//import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/desktopScaffold.dart';
import 'package:untitled1/mobileScaffold.dart';
import 'package:untitled1/tabletScaffold.dart';

import 'mobileScaffold.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Responsive(
        mobileScaffold: mobileScaffold(),
        tabletScaffold: tabletScaffold(),
        desktopScaffold: desktopScaffold(),
      ),
    );
  }
}
class Responsive extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  const Responsive({super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });
  @override
  Widget build(BuildContext context) {

   MediaQueryData mediaQuery=MediaQuery.of(context);
    if(mediaQuery.size.width < 640){
      return mobileScaffold;
    }
    else if(mediaQuery.size.width >640 && mediaQuery.size.width<1040){
      return tabletScaffold;
    }
    else
      return desktopScaffold;
  }
}
