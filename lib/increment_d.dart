

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyBagScreen(),
    );
  }
}

class MyBagScreen extends StatefulWidget {
  @override
  _MyBagScreenState createState() => _MyBagScreenState();
}

class _MyBagScreenState extends State<MyBagScreen> {
  // Item list
  List<Item> items = [
    Item(
        picture: 'assets/pic/shirt.png',
        name: 'Pullover',
        color: 'Black',
        size: 'L',
        price: 51,
        quantity: 1),
    Item(
        picture: 'assets/pic/tshirtgray.png',
        name: 'T-Shirt',
        color: 'Gray',
        size: 'L',
        price: 30,
        quantity: 1),
    Item(
        picture: 'assets/pic/shirt.png',
        name: 'Sport Dress',
        color: 'Black',
        size: 'M',
        price: 43,
        quantity: 1),
  ];

  // Method to calculate total amount
  int calculateTotal() {
    return items.fold(0, (total, item) => total + (item.price * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Bag',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    leading: Container(height: 70,width: 70,
                        child: Image.asset(item.picture)),
                    title: Text(item.name, style: TextStyle(fontSize: 18)),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            Text('Color: '),
                            Text(' ${item.color}  ',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('Size: '),
                            Text(' ${item.size}  ',style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),

                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (item.quantity > 1) item.quantity--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                            Text('${item.quantity}'),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  item.quantity++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: SizedBox(
                      height: 150,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.more_vert),
                              SizedBox(height: 8,),
                              Text('\$${item.price}',style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Total amount

            Row(

                children: [

              Text('Total amount: '),
             Text('\$${calculateTotal()}',
               textAlign: TextAlign.end,

               style: TextStyle(
                fontWeight: FontWeight.bold
             ),),

            ]),
            SizedBox(height: 16),
            // Checkout button
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Congratulations! You have checked out.'),
                  ),
                );
              },
              child: Text(
                'CHECK OUT',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(double.maxFinite),
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Item model
class Item {
  final String picture;
  final String name;
  final String color;
  final String size;
  final int price;
  int quantity;

  Item({
    required this.picture,
    required this.name,
    required this.color,
    required this.size,
    required this.price,
    this.quantity = 1,
  });
}
