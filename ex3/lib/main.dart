import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStyledContainer('OOP', Colors.blue[100]!),
                const SizedBox(height: 20),
                _buildStyledContainer('DART', Colors.blue[300]!),
                const SizedBox(height: 20),
                _buildStyledContainer('FLUTTER', Colors.blue[600]!,
                    isGradient: true),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _buildStyledContainer(String text, Color color,
    {bool isGradient = false}) {
  return Container(
    width: 300,
    height: 80,
    decoration: BoxDecoration(
      color: !isGradient ? color : null,
      gradient: isGradient
          ? LinearGradient(
              colors: [Colors.blue[300]!, Colors.blue[600]!],
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
