import 'package:flutter/material.dart';
import 'package:flutter_navigator/models/item.dart';

// class HomePage extends StatelessWidget {}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Item> items = [];

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, qty: 3),
    Item(name: 'Salt', price: 2000, qty: 10)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yudas Malabi - 2041720054")),
      body: Container(
          margin: const EdgeInsets.all(8),
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(item.price.toString(),
                                textAlign: TextAlign.end),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
