import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePageScreen extends StatefulWidget {
  const homePageScreen({super.key});

  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  // final TextEditingController _Increment = TextEditingController(text: '1');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "My Beg",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),

      ),
      body:ListView(
        children: [
          
        ],
      )
    );
  }
}

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
