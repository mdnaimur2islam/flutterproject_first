

import 'package:flutter/material.dart';

class addNewProduct extends StatefulWidget {
  const addNewProduct({super.key});

  @override
  State<addNewProduct> createState() => _addNewProductState();
}

class _addNewProductState extends State<addNewProduct> {
  TextEditingController _productNameController=TextEditingController();
  TextEditingController _unitPrizeController=TextEditingController();
  TextEditingController _totalPrizeController=TextEditingController();
  TextEditingController _imageController=TextEditingController();
  TextEditingController _productCodeController=TextEditingController();
  TextEditingController _quantityController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                controller: _productNameController,
                decoration: InputDecoration(
                  hintText: ('Nmae'),
                  labelText: 'Product name'
                ),
              ),
              TextField(
                controller: _unitPrizeController,
                decoration: InputDecoration(
                    hintText: ('Unit Prize'),
                    labelText: 'prize '
                ),
              ),
              TextField(
                controller: _totalPrizeController,
                decoration: InputDecoration(
                    hintText: ('Total prize'),
                    labelText: 'total prize'
                ),
              ),
              TextField(
                controller: _imageController,
                decoration: InputDecoration(
                    hintText: ('Image'),
                    labelText: 'image '
                ),
              ),
              TextField(
                controller: _productCodeController,
                decoration: InputDecoration(
                    hintText: ('Product code'),
                    labelText: 'product code '
                ),
              ),
              TextField(
                controller: _quantityController,
                decoration: InputDecoration(
                    hintText: ('Quantity'),
                    labelText: 'quantity '
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){},
                  child: Text('Add'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
