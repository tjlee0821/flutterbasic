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
        ExampleStateful(index: 3), // 위젯에서 초기값을 받아오고 싶다.
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
  
  final int index;

  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {

  //late int index; // index 에 값 안들어가도 될  상황이면 optional 로 late 인 경우에는 필수로 initstate 에서 값을 넣어줘야 한다.
  late int _index; // private 변수
  late TextEditingController textController;
  void initState(){
    super.initState();// 상속받을 수 있는 경우가 있을 때 그 값들 모두 
    //index = 5;  
    _index = widget.index;
    textController = TextEditingController();
  }

  // 자원을 컴퓨터에 반납하려고 한다면

  void dispose(){
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1,
      child: GestureDetector(
        onTap: (){
          setState(() {
            
          },);
          if(_index == 5){ // 맨위 매게변수에서 index를 가져올 경우. widget.index 그렇지 않고 stateful widget변수를 쓸때는 그냥 widget을 쓴다.아니면, widget.index 값을 private 변수 _index 에 넣어서 쓰는 거다
            _index = 0;
            return;
          }
          _index ++;

          print(_index);
        },
        child: Container(
          color:Colors.blue.withOpacity(_index/5),
          child: Center(child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}