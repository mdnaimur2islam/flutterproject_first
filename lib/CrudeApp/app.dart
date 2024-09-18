
import 'package:flutter/material.dart';
import 'package:untitled1/CrudeApp/product_list_screen.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: product_list_screen()
    );
  }
}
