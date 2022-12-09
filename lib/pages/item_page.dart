import 'package:flutter/material.dart';
import 'package:flutter_navigator/models/item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    int hasil = itemArgs.price * itemArgs.qty;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: Card(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Card(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                      child: Text("Item: " + itemArgs.name,
                          textAlign: TextAlign.center)),
                  Expanded(
                    child: Text("Price: " + itemArgs.price.toString(),
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text("Qty: " + itemArgs.qty.toString(),
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text(
                        "Total: " + (itemArgs.price * itemArgs.qty).toString(),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
