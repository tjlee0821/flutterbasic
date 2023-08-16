import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 이동',
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
        title:const Text('Flutter Page 이동 상태에 따라서'),
      ),
      body:homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),

        ],
        currentIndex:index,
        onTap:(newIndex) => setState(() {
          index = newIndex;
        }),
    )
    );
  }

  Widget homeBody(){
    switch(index){
      case 1:
        return Center(child:Icon(Icons.home,size:100));
      case 2:
        return Center(child:Icon(Icons.search,size:100));
      case 0:
      default:
        return Center(child:Icon(Icons.person,size:100));
    }
  }
}

