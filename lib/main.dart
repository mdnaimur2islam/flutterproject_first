
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
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

 */
void main(){
  runApp(IntroApp());
}
class IntroApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});
MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
  );
}
MyAlertDialog(context){
  return showDialog(context: context,
      builder: (BuildContext context){
    return Expanded(child: AlertDialog(
      title: Text('Alert'),
      content: Text('Are you agreed'),
      actions: [
        TextButton(onPressed: (){

          Navigator.of(context).pop();
        },
            child: Text('Yes'),
        ),
        TextButton(onPressed: (){
          MySnackBar('closed ', context);
          Navigator.of(context).pop();
        },
          child: Text('No'),
        ),
      ],
    ),
    );
      }

      );
}
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Intro App'),
        titleSpacing: 10,
        backgroundColor: Colors.greenAccent,
        toolbarHeight: 60,
        elevation: 10,
        actions: [
          IconButton(onPressed: (){
            MySnackBar('click you comment icon', context);
          },
              icon: Icon(Icons.comment)
          ),
          IconButton(onPressed: (){
            MySnackBar('click you search icon', context);
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            MySnackBar('click you email icon', context);
          }, icon: Icon(Icons.email)),
        ],
      ),

     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.cyan,
      elevation: 10,
       child: Icon(
         Icons.add,
         color: Colors.black,

       ),
       onPressed: (){
        MySnackBar('click add icon bar', context);
       },

),

   bottomNavigationBar: BottomNavigationBar(
     currentIndex: 1,
     backgroundColor:Colors.blueGrey,
     items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.amber),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',backgroundColor: Colors.amber),
       BottomNavigationBarItem(icon: Icon(Icons.comment),label: 'Message',backgroundColor: Colors.amber),
     ],
     onTap: (int index){
       if(index==0){
         MySnackBar('click you home', context);
       }
       else if(index==1){
         MySnackBar('click you profile', context);
       }
       else if(index==2){
         MySnackBar('click you Message', context);
       }
     },
   ),


   drawer: Drawer(
     backgroundColor: Colors.cyanAccent,
     child: ListView(
       children: [
         DrawerHeader(
             padding: EdgeInsets.all(1),
             
             child: UserAccountsDrawerHeader(
               currentAccountPicture: Image.network('assets/pic/mypic.jpg'),
               decoration: BoxDecoration( color: Colors.green),
               accountName: Text("Md Naimur Islam Nissan",style: TextStyle(color:Colors.black)),
               accountEmail: Text("mdnaimur122@gmail.com",style: TextStyle(color:Colors.black,)),
               onDetailsPressed: (){
                 MySnackBar('you click details', context);
               },
             )),
         ListTile(
             leading: Icon(Icons.home),
             title: Text('Home'),
             onTap: (){
               MySnackBar('click home', context);
             },
         ),
         ListTile(
             leading: Icon(Icons.person),
             title: Text('Profile'),
             onTap: (){
             MySnackBar('click profile', context);
             },
         ),
         ListTile(
             leading: Icon(Icons.settings),
             title: Text('Settings'),
              onTap: (){
              MySnackBar('click settings', context);
              },
       ),
       ],
     ),
   ),


     /*
      endDrawer: Drawer(
        backgroundColor: Colors.cyanAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Md Naimur Islam Nissan",style: TextStyle(color:Colors.black12,)),
              accountEmail: Text("mdnaimur122@gmail.com",style: TextStyle(color:Colors.black12,)),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                MySnackBar('click home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                MySnackBar('click profile', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                MySnackBar('click settings', context);
              },
            ),
          ],
        ),
      ),

*/
//Button create in Center body
     /* body: Center(
       /* child: Icon(
          Icons.adb_rounded,
          size: 100,
          color: Colors.white,
        ),
        */
        child: Image.asset('assets/pic/mobile.jpg',
          height: 250,
          width: 200,
          fit: BoxFit.contain,

        ),
      ),
    */

    /*  body: Center(
        child: ElevatedButton(
          onPressed: (){
            print('button pressed');
          },
          child: Text('Notification'),
        ),
      ),
     */

    /*  body: Center(
        child: IconButton(
          onPressed: (){
            print('add button click');
          },
          icon: Icon(Icons.add),
        ),
      ),
      */

     /*
      body: Center(
        child: TextButton(
          onPressed: (){
            print('text button click');
          },
          child: Text('text button'),
        ),
      ),
      */

     /*
      body: Center(

        /* child: Icon(
          Icons.adb_rounded,
          size: 100,
          color: Colors.white,
        ),
        */
        child: GestureDetector(
          onTap: (){
            print('one click');
          },
          onDoubleTap: (){
            print('Double click');
          },

        child: Image.asset('assets/pic/mobile.jpg',
          height: 250,
          width: 200,
          fit: BoxFit.contain,

        ),
        ),

      ),
     */

     /*
      body: Center(
        child: InkWell(
          onTap: (){
            print("one tap");
          },
          onDoubleTap: (){
            print("double Tap");
          },
         child: Text('Text Button'),
        )

      ),
      */
      

      /*
      body: Container(
        height: 150,
        width: 150,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          border: Border.all(color: Colors.black,width: 2),
        ),
        child: Image.network('assets/pic/mypic.jpg'),
      ),

       */


      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            child:GestureDetector(
              onTap: (){
              MyAlertDialog(context);
              },
              onDoubleTap: (){
                print('Double tap');
              },
              child: Image.network('assets/pic/mypic.jpg'),
            )


          ),
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            child:GestureDetector(
              onTap: (){
                MyAlertDialog(context);
              },
              onDoubleTap: (){
                print('Double tap');
              },
              child: Image.network('assets/pic/mobile.jpg'),
            )


          ),
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            child:GestureDetector(
              onTap: (){
                MyAlertDialog(context);
              },
              onDoubleTap: (){
                print('Double tap');
              },
              child: Image.network('assets/pic/mypic.jpg'),
            )


          ),
        ],
      ),


      /*
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            child: Image.network('assets/pic/mypic.jpg'),

          ),
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            child: Image.network('assets/pic/mobile.jpg'),

          ),
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            child: Image.network('assets/pic/mypic.jpg'),

          ),
        ],
      ),
      */

    );
  }
}

