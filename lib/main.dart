
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
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      backgroundColor: Colors.green
    );
    return Scaffold(

        appBar: AppBar(
         // backgroundColor: Colors.grey,

          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(5),
                child: Text('Hello world!', style: TextStyle(
                    color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20
                ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5),
                child: Text('Welcome to Flutter', style: TextStyle(
                    fontSize: 20
                ),
                ),
              ),
             Container(
               width: 150,
               height: 150,
               decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage('assets/pic/mobile.jpg'),
                   fit: BoxFit.cover
               ),

             ),
             ),
              Padding(padding: EdgeInsets.all(10),
          child:   ElevatedButton(onPressed: (){
              MySnackBar('Button pressed',context);
            },
            child: Text('press me'),
              style: buttonStyle,

            ),
    )




            ],
          ),
        ),
      );


  }
}

