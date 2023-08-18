import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterbasic/pages/RSAgame_cpuinput.dart';
import 'package:flutterbasic/pages/RSAgame_enumInput.dart';
import 'package:flutterbasic/pages/RSAgame_gameresult.dart';
import 'package:flutterbasic/pages/RSAgame_userinput.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput; //enum

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDone = false;
    setCpuInput();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone, cpuInput: _cpuInput)),
        Expanded(
          child: GameResult(
            isDone: isDone,
            callbackShowGameResult: gameResult(),
            callback: reset,
          ),
        ),
        Expanded(
            child: UserInput(
                isDone: isDone, callback: setUserInput, userInput: _userInput)),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }

  void setCpuInput() {
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  ShowGameResult? gameResult() {
    // enum method
    if (_userInput == null) return null;

    switch (_userInput!) {
      case InputType.paper:
        switch (_cpuInput) {
          case InputType.rock:
            return ShowGameResult.playerWin;
          case InputType.paper:
            return ShowGameResult.draw;
          case InputType.sicssor:
            return ShowGameResult.cpuWin;
        }
      case InputType.rock:
        switch (_cpuInput) {
          case InputType.rock:
            return ShowGameResult.draw;
          case InputType.paper:
            return ShowGameResult.cpuWin;
          case InputType.sicssor:
            return ShowGameResult.playerWin;
        }
      case InputType.sicssor:
        switch (_cpuInput) {
          case InputType.rock:
            return ShowGameResult.cpuWin;
          case InputType.paper:
            return ShowGameResult.playerWin;
          case InputType.sicssor:
            return ShowGameResult.draw;
        }
    }
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }
}
