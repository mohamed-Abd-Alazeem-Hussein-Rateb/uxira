import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item'),
      ),
      body: Center(
        child: Text(
          'Number is $number',
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
    );
  }
}
