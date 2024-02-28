import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.label,
    required this.icon,
  });
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}