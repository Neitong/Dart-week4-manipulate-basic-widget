import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';


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
                CustomCard(text: 'OOP', color: Colors.blue[100]!),
                const SizedBox(height: 20),
                CustomCard(text: 'DART', color: Colors.blue[300]!),
                const SizedBox(height: 20),
                CustomCard(
                  text: 'FLUTTER',
                  color: Colors.blue[600]!,
                  isGradient: true,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

