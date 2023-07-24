import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
    home: const Scaffold(
      body:SafeArea(
        child: const Text('Hello, Flutter', style: TextStyle(
          color:Colors.black,
        ),
        ),
      ),
    ),
  ),
  );
}