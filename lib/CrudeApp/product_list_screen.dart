import 'package:flutter/material.dart';
import 'package:untitled1/CrudeApp/add_new_product.dart';

class product_list_screen extends StatefulWidget {
  const product_list_screen({super.key});

  @override
  State<product_list_screen> createState() => _product_list_screenState();
}

class _product_list_screenState extends State<product_list_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return const ProductItem();
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 4);
            },
            itemCount: 10),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const addNewProduct();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Product name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('product code :CODE'),
          const Text('prize: \$120'),
          const Text('Quantity: 2'),
          const Text('Total prize: \$240'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {},
                label: const Text('edit'),
                icon: const Icon(Icons.edit),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                ),
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
