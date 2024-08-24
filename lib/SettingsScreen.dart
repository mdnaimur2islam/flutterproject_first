import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                    child: Icon(
                      Icons.animation,
                      size: 100,

                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                    child: Icon(
                      Icons.animation,
                      size: 100,

                    ),
                  ),
                ),
              ],
            ),
            Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('aksilalshan'),
               )
             ],
            )
          ],
        ),
      ),
    );
  }
}