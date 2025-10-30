import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final Color color;
  final bool isGradient;

  const CustomCard({
    Key? key,
    required this.text,
    required this.color,
    this.isGradient = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      decoration: BoxDecoration(
        color: !isGradient ? color : null,
        gradient: isGradient
            ? LinearGradient(
          colors: [Colors.blue[300]!, Colors.blue[900]!],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
            : null,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
