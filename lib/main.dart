import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: const Text('widget 배율로 배치'),
      ),

      body:const HomeWidget(),
    )

  ),);

}
class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:ConstraintWidget(),
      )
    );
  }
}

class ConstraintWidget extends StatelessWidget {
  const ConstraintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:500,width: 500, color:Colors.red,child: Container(
        height:300,
        width:300,
        color:Colors.red,
      ),


    );
  }
}