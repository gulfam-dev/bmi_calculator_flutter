import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  const ResuableCard({
    super.key,
    required this.color,
    required this.childCard,
  });
  final Color color;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: childCard,
    );
  }
}