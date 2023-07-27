import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: const Text('widget 배율로 배치'),
      ),

      body:const Body(),
    )

  ),);

}
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // children: [
      //   Flexible(flex: 1,child: Container(color:Colors.red)),
      //   Flexible(flex: 2,child: Container(color:Colors.blue)),
      // ],

      children: [
        Container(width: double.infinity, height:200, color:Colors.red,),
        Expanded(child: Container(color:Colors.blue),),
        Expanded(child: Container(color:Colors.purple),),
        Flexible(child: Container(color:Colors.red))
      ],
    );
  }
}

