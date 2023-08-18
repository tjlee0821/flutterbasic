import 'package:flutter/material.dart';
import 'package:flutterbasic/pages/RSAgame_enumInput.dart';
// import 'package:flutterbasic/pages/RSAgame_userinput.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final ShowGameResult? callbackShowGameResult;
  final VoidCallback callback;
  const GameResult(
      {required this.isDone,
      this.callbackShowGameResult,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(callbackShowGameResult!.displayString),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () => callback.call(),
            child: Text('다시다시'),
          )
        ],
      );
    }

    return const Center(
      child: Text(
        '가위 바위 보 중 하나를 선택 해 주세요',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
