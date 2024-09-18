import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/CrudeApp/UpdateProductScreen.dart';
import 'package:untitled1/CrudeApp/productmodels.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,required this.product,
  });
  final productmodels product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text('${product.ProductName}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('product code :${product.ProductCode}'),
          Text('prize: \$${product.UnitPrice}'),
          Text('Quantity: ${product.Qty}'),
          Text('Total prize: \$${product.TotalPrice}'),

          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const UpdateProductScreen();
                    }),
                  );
                },
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