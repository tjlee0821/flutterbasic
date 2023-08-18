import 'package:flutter/material.dart';
import 'package:flutterbasic/pages/RSAgame_enumInput.dart';
import 'package:flutterbasic/pages/RSAgame_inputcards.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput;
  final Function(InputType) callback;

  const UserInput(
      {this.userInput,
      required this.isDone,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          SizedBox(
            height: 10,
            width: 10,
          ),
          InputCards(
            child: Image.asset(userInput!.path),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
        .map(
          (type) => InputCards(
              child: Image.asset(type.path),
              callback: () => callback.call(type)),
        )
        .toList();
  }
}
