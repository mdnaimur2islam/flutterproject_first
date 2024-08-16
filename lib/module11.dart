
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( DevicePreview(  //device preview
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //5 line is device previews theme mode
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // screen size or other information janar jonno
    MediaQueryData mediaQuery=MediaQuery.of(context);
    print(mediaQuery.size.width);
    print(mediaQuery.size.height);
    print(mediaQuery.size.aspectRatio);
    print(mediaQuery.size.flipped.height);
    if(mediaQuery.size.width<640)print('this is mobile');
    else if(mediaQuery.size.width>640 && mediaQuery.size.width<1008)
      print('this is tablet');
    else
      print('this is pc');
    return  Scaffold(

      appBar: AppBar(

        title: Text('Home'),
        backgroundColor: Colors.greenAccent,

      ),
     //body1
   /*
      body: Column(

        //scroll korar way
        /* children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,//
            child: Row(
              children: [
                Text('my name is nissan'),
                Text('my name is nissan'),
                Text('my name is nissan'),
                Text('i read in Bsc honours in cse department ,faculty of cse ,hstu'),
              ],
            ),
          )

        ],
        */
        children: [
          //Wrap korle screen soto hole venge nice line e jabe
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 12,
            children: [
              Text('my name is nissan'),
              Text('my name is nissan'),
              Text('my name is nissan'),
              Text('in cse department ,faculty of cse ,hstu'),
            ],
          ),


        ],
      ),
      */
      //orientationBuilder ar maddhome vinno vinno ui dekhate pari
     //body 2
    /* body: OrientationBuilder(

        builder: (context,Orientation orientation){
          print(orientation);
          if(orientation==Orientation.portrait){
            return Column(
              children: [
                Text('abcedlekd portrait')
              ],
            );
          }
          else
            {
              return Center(
                child: Text('landscape'),
              );
            }

        },

      ),*/
      //layoutBuilder
      body: LayoutBuilder(
        builder: (context,BoxConstraints constraints){
          if(constraints.maxWidth<640)
            return Text('this is mobile');
          else if (constraints.maxWidth<640 && constraints.maxWidth<1008)
            return Text('this is tablet');
          else
            return Text('this is pc');
        },
      ),
    );
  }
}

