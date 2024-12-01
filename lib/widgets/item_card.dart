import 'package:flutter/material.dart';
import 'package:mis_labs1/model/item.dart';

class ItemCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final int price;
  final String image;

  const ItemCard(
      {super.key,
      required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: const Color.fromARGB(36, 7, 61, 123),
        onTap: () => {
          Navigator.pushNamed(context, "/details",
              arguments: Item(
                  id: id,
                  name: name,
                  image: image,
                  description: description,
                  price: price))
        },
        child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(73, 36, 36, 153), width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomRight,
                  ),
                ),
                const Divider(),
                Text(
                  "${name[0].toUpperCase()}${name.substring(1)}",
                  style: const TextStyle(
                    fontSize: 21,
                    color: Colors.black87,
                  ),
                ),
                const Divider(),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const Divider(),
                Text(
                  "Price: $price MKD",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
