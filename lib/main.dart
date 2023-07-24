import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: const CustomContainer(),
  ),
  ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:double.infinity,
      //color:Colors.red.shade200,
      color:const Color(0xFF85D07B),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
      child:Center(child: Text('Hello, Flutter'),),
    );
  }
}
