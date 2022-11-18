import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child: Text("Category Screen",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
    );
  }
}
