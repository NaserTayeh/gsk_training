// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/data.dart';
import 'package:flutter_application_4/ecommerce_app/models/product_model.dart';
import 'package:flutter_application_4/ecommerce_app/views/product_widget.dart';

class EcommerceMainScreen extends StatelessWidget {
  List<Product> convertMapsToProducts() {
    return data.map((e) => Product.fromMap(e)).toList();
  }

  late List<Product> products;
  EcommerceMainScreen() {
    this.products = convertMapsToProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('ECOMMERCE'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green)),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SizedBox(
                                height: 80,
                                child: Image.network(
                                    products[index].image.toString()),
                              )),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      );
                    },
                    itemCount: products.length),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 7,
            ),
            Text(
              'Product',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            Divider(
              thickness: 7,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // mainAxisExtent: 400,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemCount: products.length,
                itemBuilder: ((c, index) {
                  return ProductWidget(products[index]);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
