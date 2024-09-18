import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:untitled1/CrudeApp/UpdateProductScreen.dart';
import 'package:untitled1/CrudeApp/add_new_product.dart';
import 'package:untitled1/CrudeApp/product_item.dart';
import 'package:untitled1/CrudeApp/productmodels.dart';
//http://164.68.107.70:6060
class product_list_screen extends StatefulWidget {
  const product_list_screen({super.key});

  @override
  State<product_list_screen> createState() => _product_list_screenState();
}

class _product_list_screenState extends State<product_list_screen> {
  List<productmodels> productList = [];
  bool _inprogress=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(onPressed: (){
            getProductList();
          }, icon: Icon(Icons.refresh))
        ],
      ),
      body: _inprogress?const Center(
        child: CircularProgressIndicator(),
      ) : Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return  ProductItem(
                product: productList[index],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 4);
            },
            itemCount: productList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const addNewProduct();
          }));
        },
        child:const Icon(Icons.add),
      ),
    );
  }

  Future<void> getProductList() async {
    _inprogress=true;
   setState(() {});
    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/ReadProduct');
    Response response = await get(uri);
    print(response);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      productList.clear();
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      for (var item in jsonResponse['data']) {
        productmodels product = productmodels(
            id: item['_id'],
            ProductName: item['ProductName'] ?? '',
            ProductCode: item['ProductCode']??'',
            Img: item['Img']??'',
            UnitPrice: item['UnitPrice']??'',
            Qty: item['Qty']??'',
            TotalPrice: item['TotalPrice']??'',
            CreatedDate: item['CreatedDate']??'',
        );
        productList.add(product);
      }
    }
    _inprogress=false;
    setState(() {});
  }
}


