
import 'package:flutter/material.dart';
class tabletScaffold extends StatefulWidget {
  const tabletScaffold({super.key});

  @override
  State<tabletScaffold> createState() => _tabletScaffoldState();
}

class _tabletScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'HUMMING',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text('BIRD .',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ),
        actions: [
        const  Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Episodes'),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text('About'),
              ),
            ],
          )
        ],
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

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150,top: 50),
                    child: ElevatedButton(

                      onPressed: () {

                      },
                      child: Text(
                        textAlign: TextAlign.center,
                        'JOin course',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),

                        ),
                        backgroundColor: Colors.green,
                        //padding: EdgeInsets.only(right:100),
                      ),
                    ),
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
