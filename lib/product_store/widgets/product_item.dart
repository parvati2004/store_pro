// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:store_pro/product_store/model/icecream.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.icecream,
  }) : super(key: key);

  final Icecreams icecream;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(icecream.image),
      ),
    );
  }
}
