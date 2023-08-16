import 'package:flutter/material.dart';
import 'package:flutterbasic/pages/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
              name: 'home',
              builder: (context, _) => const HomeWidget()),
          GoRoute(
              path: '/new1',
              name: 'new1',
              builder: (context, _) => const NewPage()),
          GoRoute(
              path: '/new2',
              name: 'new2',
              builder: (context, _) => const NewPage2()),
        ],
      ),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Page Router를 이용해서'),
      ),
      body: Center(
        child: TextButton(
            child: const Text('Go To Page'),
            onPressed: () {
              context.pushNamed('new1');
            }),
      ),
    );
  }
}
