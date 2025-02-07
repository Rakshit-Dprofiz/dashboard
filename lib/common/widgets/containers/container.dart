import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;

  const TRoundedContainer({
    super.key,
    this.width = 200.0, // Default fixed width
    this.height = 75.0, // Default fixed height
    this.backgroundColor = Colors.blue, // Default color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0), // Adjust border radius as per need
      ),
    );
  }
}
