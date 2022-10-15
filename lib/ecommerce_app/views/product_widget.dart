// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/ecommerce_app/models/product_model.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  ProductWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.green.withOpacity(0.2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: double.infinity,
            child: Image.network(
              product.image ?? '',
              errorBuilder: (x, y, z) {
                return Center(
                  child: Icon(Icons.broken_image),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title ?? 'Not Defined',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          Text(
            product.price.toString() + ' NIS',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
