import 'package:apistudy/model/productmodel.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Entry product;

  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              product.api,
              maxLines: 2,
              style: const TextStyle(
                  fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),

          ],
        ),
      ),
    );
  }
}
