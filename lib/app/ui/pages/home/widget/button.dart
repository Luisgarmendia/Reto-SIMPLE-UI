import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function function;
  final String text;
  final BoxDecoration? boxdecoration;
  final Color textColor;
  final Color splashColor;
  final double fontSize;

  CustomButton({
    required this.function,
    required this.text,
    this.splashColor = Colors.blueGrey,
    this.fontSize = 16,
    this.boxdecoration,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.function,
      child: Container(
        height: 50,
        width: 140,
        decoration: this.boxdecoration,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
              color: this.textColor,
              fontSize: this.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
