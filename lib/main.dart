import 'package:flutter/material.dart';
import 'package:flutterbasic/pages/new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Page Router를 이용해서'),
      ),
      body: Center(child: TextButton(
        child:Text('Go To Page'),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
                return const NewPage();
        },
      ),);
    }
    ),),);
  }
}