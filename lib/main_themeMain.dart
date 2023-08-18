import 'package:flutter/material.dart';
import 'package:flutterbasic/style/theme.dart';

void main() {
  runApp(
    MaterialApp(home: HomeWidget(), theme: customTheme
        // theme: ThemeData(
        //   colorScheme: ColorScheme.light(
        //     primary: Colors.indigo,
        //     secondary: Colors.green,
        //     tertiary: Colors.yellow,
        //   ),
        //   appBarTheme: AppBarTheme(backgroundColor: Colors.red),
        // ),
        ),
  );
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
    // final textTheme = Theme.of(context).textTheme;

    final textTheme = customTheme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: Center(
        child: TextButton(
            child: Text('Go To Page', style: textTheme.bodyMedium),
            onPressed: () {
              //   context.pushNamed('new1');
            }),
      ),
    );
  }
}
