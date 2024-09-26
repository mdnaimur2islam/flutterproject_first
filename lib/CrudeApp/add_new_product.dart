

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' ;

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
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
  bool _inprogress=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _productNameController,
                  decoration: InputDecoration(
                    hintText: ('Nmae'),
                    labelText: 'Product name'
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value';
                    }
                    return null;
                  },
                  controller: _unitPrizeController,
                  decoration: InputDecoration(
                      hintText: ('Unit Prize'),
                      labelText: 'prize '
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value';
                    }
                    return null;
                  },
                  controller: _totalPrizeController,
                  decoration: InputDecoration(
                      hintText: ('Total prize'),
                      labelText: 'total prize'
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value';
                    }
                    return null;
                  },
                  controller: _imageController,
                  decoration: InputDecoration(
                      hintText: ('Image'),
                      labelText: 'image '
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value';
                    }
                    return null;
                  },
                  controller: _productCodeController,
                  decoration: InputDecoration(
                      hintText: ('Product code'),
                      labelText: 'product code '
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid value';
                    }
                    return null;
                  },
                  controller: _quantityController,
                  decoration: InputDecoration(
                      hintText: ('Quantity'),
                      labelText: 'quantity '
                  ),
                ),
                const SizedBox(height: 10,),
              _inprogress? const Center(
                child: CircularProgressIndicator()
              ) : ElevatedButton(onPressed: _onTapAddProductButton,
                    child: Text('Add'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromWidth(double.maxFinite),
                  ),
        
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _onTapAddProductButton(){
    if(_formKey.currentState!.validate()){
      addNewProduct();
    }
  }
  Future<void>addNewProduct() async{
    _inprogress=true;
    setState(() {
    });
    Uri uri=Uri.parse('http://164.68.107.70:6060/api/v1/CreateProduct');
    Map<String,dynamic>requrstBody={
      "Img":_imageController.text,
      "ProductCode":_productCodeController.text,
      "ProductName":_productNameController.text,
      "Qty":_quantityController.text,
      "TotalPrice":_totalPrizeController.text,
      "UnitPrice":_unitPrizeController.text,
    };
    Response response=await post(uri,
        headers: {
      "Content-Type":"application/json"
        },
        body: jsonEncode(requrstBody),
    );
    print(response.statusCode);
    print(response.body);
    if(response.statusCode==200){
      _clearTextFields();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("add product")));
    }
    _inprogress=false;
    setState(() {});
  }

  void _clearTextFields(){
    _productNameController.clear();
    _quantityController.clear();
    _unitPrizeController.clear();
    _totalPrizeController.clear();
    _productCodeController.clear();
    _imageController.clear();

  }
  @override
  void dispose() {
  _productNameController.dispose();
  _quantityController.dispose();
  _totalPrizeController.dispose();
  _imageController.dispose();
  _productCodeController.dispose();
  _unitPrizeController.dispose();
  super.dispose();
  }
}
