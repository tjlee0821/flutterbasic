import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: const Body(),
  ),
  ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        ExampleStatless(),
        ExampleStateful()
      ],
    );
  }
}

class ExampleStatless extends StatelessWidget {
  const ExampleStatless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1,
      child: Container(
        color:Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1,
      child: GestureDetector(
        onTap: (){
          setState(() {
            
          },);
          if(index == 5){
            index = 0;
            return;
          }
          index ++;

          print(index);
        },
        child: Container(
          color:Colors.blue.withOpacity(index/5),
          child: Center(child: Text('$index'),
          ),
        ),
      ),
    );
  }
}