import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }
}
