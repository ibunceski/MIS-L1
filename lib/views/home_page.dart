import 'package:flutter/material.dart';
import 'package:mis_labs1/model/item.dart';
import 'package:mis_labs1/widgets/items_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = List.empty(growable: true);

  @override
  void initState() {
    items.add(Item(
        id: 1,
        name: "Hoodie",
        description: "A cozy hoodie.",
        price: 1500,
        image: 'assets/hoodie.jpg'));
    items.add(Item(
        id: 2,
        name: "Sneakers",
        description: "Trendy black sneakers.",
        price: 3500,
        image: 'assets/sneakers.jpg'));
    items.add(Item(
        id: 3,
        name: "Jacket",
        description: "Classic jacket.",
        price: 3350,
        image: 'assets/jacket.jpg'));
    items.add(Item(
        id: 4,
        name: "Jeans",
        description: "Stylish jeans.",
        price: 1300,
        image: 'assets/jeans.jpg'));
    items.add(Item(
        id: 5,
        name: "T-shirt",
        description: "A soft cotton t-shirt.",
        price: 900,
        image: 'assets/t-shirt.jpg'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "221094",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 107, 216),
      ),
      body: ItemsGrid(
        items: items,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Share",
        child: const Icon(Icons.share),
      ),
    );
  }
}
