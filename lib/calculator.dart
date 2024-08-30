import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calbutton(String btntext, Color btncolor, Color txtcolor) {
    return Container(
        height:70,
        width: 70,

      child: ElevatedButton(
        onPressed: () {

        },
        child: Text(
          btntext,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
style: ElevatedButton.styleFrom(

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(100),

  ),
  backgroundColor: btncolor,
  padding: EdgeInsets.all(10),
),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text('Calculator'), backgroundColor: Colors.lightBlueAccent),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text('0',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 100)),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('AC', Colors.grey,Colors.white),
                  calbutton('+/-', Colors.grey,Colors.white),
                  calbutton('%', Colors.grey,Colors.white),
                  calbutton('/', Colors.amberAccent,Colors.white),
                ],
              ) ,
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('9', Colors.grey,Colors.white),
                  calbutton('8', Colors.grey,Colors.white),
                  calbutton('7', Colors.grey,Colors.white),
                  calbutton('x', Colors.amberAccent,Colors.white),
                ],
              ) ,
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('6', Colors.grey,Colors.white),
                  calbutton('5', Colors.grey,Colors.white),
                  calbutton('4', Colors.grey,Colors.white),
                  calbutton('-', Colors.amberAccent,Colors.white),
                ],
              ) ,
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('3', Colors.grey,Colors.white),
                  calbutton('2', Colors.grey,Colors.white),
                  calbutton('1', Colors.grey,Colors.white),
                  calbutton('+', Colors.amberAccent,Colors.white),
                ],
              ),
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
        
                  ElevatedButton(onPressed: (){
        
                  },
                      child: Text('0'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(34, 25, 128, 25),
                      backgroundColor: Colors.grey,
        
                    ),
        
                  ),
                  calbutton('.',Colors.grey, Colors.white),
                  calbutton('=',Colors.amberAccent, Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
