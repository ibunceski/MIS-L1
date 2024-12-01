import 'package:flutter/material.dart';
import 'package:mis_labs1/model/item.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          arguments.name,
          style: const TextStyle(fontSize: 26,color: Color.fromARGB(245, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 11, 101, 227),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              arguments.image,
              fit: BoxFit.cover,
              height: 500,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    arguments.name,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Price: ${arguments.price} MKD',
                    style: const TextStyle(fontSize: 25, color: Colors.green),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                arguments.description,
                style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back_sharp),
      ),
    );
  }
}
