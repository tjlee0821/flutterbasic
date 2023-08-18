import 'package:flutter/material.dart';
import 'package:flutterbasic/pages/RSAgame_enumInput.dart';
import 'package:flutterbasic/pages/RSAgame_inputcards.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;
  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    // if (isDone) {
    //   return const Placeholder();
    // }

    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        InputCards(
          child: getCpuInput(),
        ),
        Expanded(child: SizedBox.shrink())
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(
      width: 64,
      height: 64,
      child: Center(
        child: Text(
          '?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
