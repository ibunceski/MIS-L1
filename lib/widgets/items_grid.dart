import 'package:flutter/material.dart';
import 'package:mis_labs1/widgets/item_card.dart';

import '../model/item.dart';

class ItemsGrid extends StatefulWidget {
  final List<Item> items;
  const ItemsGrid({super.key, required this.items});
  @override
  _ItemsGridState createState() => _ItemsGridState();
}

class _ItemsGridState extends State<ItemsGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.items
          .map(
            (item) => ItemCard(
              id: item.id,
              name: item.name,
              image: item.image,
              description: item.description,
              price: item.price,
            ),
          )
          .toList(),
    );
  }
}
