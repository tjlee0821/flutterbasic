import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: const Text('다양한 flutter의 call back event'),
      ),

      body:const Body(),
    )

  ),
  );

}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('Count : $value', style: const TextStyle(fontSize:30)),
        ),
        
        TxtButton(addCount),
      ],

    );
  }

   void addCount(){
    setState(() {
      value ++;
    });
   }

  //  void addCount( int addValue ){
  //   setState(() {
  //     value + addValue;
  //   });
  //  }
}    


class TxtButton extends StatelessWidget {
  const TxtButton(this.callback, {super.key});

  final VoidCallback callback;
  // final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> callback.call(),
      //onTap:()=> callback.call(1),
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical:8),
          width: double.infinity,
          child: const Text('Tap Counter')
          ),
      ),
    );
  }
}