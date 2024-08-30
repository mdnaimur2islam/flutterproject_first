import 'package:flutter/material.dart';

class desktopScaffold extends StatefulWidget {
  const desktopScaffold({super.key});

  @override
  State<desktopScaffold> createState() => _desktopScaffoldState();
}

class _desktopScaffoldState extends State<desktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
          Row(
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
      body: Row(
        children: [
          const Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Wrap(
                    children: [
                      Text(
                        'FLUTTER WEB. THE BASICS',
                        style:
                            TextStyle(fontSize: 56, fontWeight: FontWeight.bold,letterSpacing: 1.5),
                      ),
                      Text(
                        'In this course we will go over the basics of usings Flutter Wed for development. Topics will include Responsive Layout ,Deploying ,Font Changes,Hover functionally ,Models and more',
                        style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 1.5
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
              child: SizedBox(

              )),
          Expanded(
            flex: 3,


              child:  Padding(
                padding: const EdgeInsets.only(right: 50),
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
            ),

          
        ],
      ),
    );
  }
}
