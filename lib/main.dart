
//assignment
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Home.dart';

void main(){
  runApp( DevicePreview(  //device preview
    enabled: true,
    builder: (context) => IntroApp(), // Wrap your app
  ),);

}
class IntroApp extends StatelessWidget{
 @override
  Widget build(BuildContext context){
   return MaterialApp(



     theme: ThemeData( //device preview theke e modified
       brightness: Brightness.light,
       appBarTheme: AppBarTheme(
         backgroundColor: Colors.pinkAccent,
         centerTitle: false,
           titleTextStyle: TextStyle(
           fontSize: 22,
             color: Colors.white,
             fontWeight: FontWeight.bold
          ),
       ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepPurpleAccent,
            backgroundColor: Colors.white,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,

            ),
          ),
        ),
     inputDecorationTheme: InputDecorationTheme(
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: BorderSide(
               color: Colors.black,
               style: BorderStyle.solid
           )
       ),
     )
     ),
    darkTheme: ThemeData(//device preview theke e modified
       brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          centerTitle: false,
          titleTextStyle: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepPurpleAccent,
            backgroundColor: Colors.white,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,

            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid
              )
          ),
        )
    ),
     themeMode: ThemeMode.system,//user device onujay dark light hobe
     home: Home(),

   );
 }
}






