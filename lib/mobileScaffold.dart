import 'package:flutter/material.dart';
class mobileScaffold extends StatefulWidget {
  const mobileScaffold({super.key});

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
         children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Text('HUMMING',style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 50),
                   child: Text('BIRD .',style: TextStyle(fontWeight: FontWeight.bold)),
                 )
               ],
             ),

         ],
        ),

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [

            const DrawerHeader(

              decoration: BoxDecoration(
                  color:Colors.green
              ),
              child: Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SKILL UP NOW',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white
                    ),),
                    Text('TAP HERE',style: TextStyle(
                        color: Colors.white
                    ),)
                  ],
                ),
              ),

            ),
            ListTile(
              leading: Icon(Icons.vertical_distribute_rounded),
              title: Text('Episodes'),
            ) ,
            ListTile(
              leading: Icon(Icons.abc_outlined),
              title: Text('Episodes'),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(
        
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                children: [
                  Text('FLUTTER WEB. THE BASICS',style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold
                  ),),
        
                  Text('In this course we will go over the basics of usings Flutter Wed for development. Topics will include Responsive Layout ,Deploying ,Font Changes,Hover functionally ,Models and more',
                    style:TextStyle(
                      fontSize: 20,

                    ),),
                    ElevatedButton(

                       onPressed: (){} ,
                        child: Text('Join course')
                    ),

                ],

              ),

            ],
          ),
        ),

      ),
    );
  }
}
