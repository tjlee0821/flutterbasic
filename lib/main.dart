import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 외부라이브러리'),
      ),

      body:RandomWords(),
    )

  ),
  );

}

class RandomWords extends StatelessWidget {
  const RandomWords
({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    
    final widgets = wordList.map((word) => Text(word.asString, style: TextStyle(fontSize:32,),),).toList();

    
    return Column(
      children: widgets
    );
  }
}