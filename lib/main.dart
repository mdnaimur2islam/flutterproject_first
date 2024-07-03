
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(                                      //Scaffold->basic screen dey
      appBar: AppBar(                                    //appBar->Navbar ar moto upor e title likhar appbar dey
        backgroundColor: Colors.blueAccent,
        title: Text('Home',textAlign: TextAlign.center,style: TextStyle(
          fontSize: 32,fontWeight: FontWeight.bold,
        ), ),

      ),
      body: Center(
        child: Text('First App this correct way to going up',
        textAlign: TextAlign.center,
          maxLines: 2,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            letterSpacing: 1,
            wordSpacing: 2,
            overflow: TextOverflow.ellipsis,
            backgroundColor: Colors.indigo,
            color: Colors.amberAccent
          ),
        ),

      ),

    ),
  );
  }

}