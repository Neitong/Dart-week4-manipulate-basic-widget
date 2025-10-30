import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello my name is Neitong !',
            style: TextStyle(
              color: Colors.redAccent ,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    ),
  );
}