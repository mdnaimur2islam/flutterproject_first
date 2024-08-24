import 'package:flutter/material.dart';
import 'package:untitled1/SettingsScreen.dart';

class Home extends StatelessWidget{

  TextEditingController newController=  TextEditingController();
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
        // backgroundColor: Colors.grey,//theme a set korle default hisabe ogula takbe

        title: Text('Greeting App'),
      ),
      // create row column ,button,pic add in center
      //body 1
      /* body: Center(
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
        ),*/
      // body2
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(

              enabled: true,
              decoration: InputDecoration(
                label: Text('Name'),
                labelStyle: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal
                ),
                hintText: 'Enter your name',
                hintStyle: TextStyle(
                    color: Colors.teal,
                    fontSize: 15,

                    fontStyle: FontStyle.italic

                ),
                icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.search),
                suffixIcon: TextButton(
                  child: Text('search'),
                  onPressed: (){
                    MySnackBar('click completed', context);
                  },
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              enabled: true,

              decoration: InputDecoration(
                label: Text('password'),
                labelStyle: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal
                ),
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                    color: Colors.teal,
                    fontSize: 15,

                    fontStyle: FontStyle.italic

                ),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(

              controller: newController ,
              enabled: true,
              maxLines: 3,
              maxLength: 150,

              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.auto,//for start position write
                label: Text('Description'),
                labelStyle: TextStyle(

                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal
                ),
                hintText: ' description',
                hintStyle: TextStyle(
                    color: Colors.teal,
                    fontSize: 15,

                    fontStyle: FontStyle.italic

                ),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2
                    )
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 2
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              newController.clear();
            },
                child: Text('clear description')
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()),);
            },
                child: Text('Setting Screen')
            )

          ],
        ),
      ),
    );


  }
}