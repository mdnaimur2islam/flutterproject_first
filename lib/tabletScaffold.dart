
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
        title: Text('tablet'),
      ),
    );
  }
}
