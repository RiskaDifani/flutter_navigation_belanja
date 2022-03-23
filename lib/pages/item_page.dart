
import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';


class ItemPage extends StatelessWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          itemArgs.name + ' with ' + itemArgs.price.toString(),
        ),
      ),
    );
  }
}