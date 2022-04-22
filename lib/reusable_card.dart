import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color col;
  final cardChild;
  ReUsableCard({required this.col,this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}