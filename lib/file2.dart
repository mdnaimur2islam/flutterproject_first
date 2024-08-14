
//assignment
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(IntroApp());

}
class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    MySnackBar(message,context){
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
      );
    }

    return Scaffold(

      appBar: AppBar(
        // backgroundColor: Colors.grey,

        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5),
              child: Text('Flutter Text Styling', style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
              ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5),
              child: Text('Experiment with text styles', style: TextStyle(
                  fontSize: 20,
                fontStyle: FontStyle.italic
              ),
              ),
            ),
           

            Padding(padding: EdgeInsets.all(5),
              child:  TextButton(onPressed: (){
                MySnackBar('You Click the Button',context);
              },
                child: Text('Click Me'),


              ),
            ),
            Padding(padding: EdgeInsets.all(5),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Welcome to ',style: TextStyle(
                   fontSize: 20
                 ),),
                 Text('Flutter!',style: TextStyle(
                   fontSize: 25,
                   color: Colors.blue
                 ),)
               ],
             ),
            )




          ],
        ),
      ),
    );


  }
}

