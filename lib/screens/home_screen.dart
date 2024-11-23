import 'package:flutter/material.dart';
import 'package:prj_wisatacandi_si51w/data/candi_data.dart';
import 'package:prj_wisatacandi_si51w/models/candi.dart';
import 'package:prj_wisatacandi_si51w/screens/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 1. Buat appBar dengan judul_wisata Candi
      appBar: AppBar(title: Text('Wisata Candi')),
      //TODO : 2. Buat body dengan GridView.builder
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            //TODO : 3. Buat ItemCard sebagai return value dari GridView.builder
            //sudah di item_card.dart
            Candi candi = candiList[index];

            return ItemCard(candi: candi);
          }),
    );
  }
}
