
import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';
import 'package:flutter_belanja/pages/DetailItem.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Center(
        child: Row(children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const DetailItem();
              }));
            }, 
            child: Hero(
              tag: 'imageHero',
              child: Image(
                image: AssetImage("images/garam.jpg"),
              ),
            ),
          ),
        Expanded(
          child: Text(
            itemArgs.name,
            textAlign: TextAlign.end,
          )),
          Text(' With '),
          Expanded(
            child: Text(
              itemArgs.price.toString(),
              textAlign: TextAlign.justify,
            )
          ),
        ],
      ),
      ),
    );
  }
}