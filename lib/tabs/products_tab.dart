import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store/tiles/category_tile.dart';

class ProductsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("products").getDocuments(),
      builder: (contex, snapshot){
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator(),);
        else{

          var dividedTiles = snapshot.data.documents.map((doc){
                return CategoryTile(doc);
              }).toList();

          return ListView(
            children: dividedTiles
          ,);
        }
      },
    );
  }
}