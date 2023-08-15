import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const assetImageNetworkPath = 'https://www.collective-intelligent.com';
const logoImage = '$assetImageNetworkPath/tmp/logo_256.png';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 외부라이브러리'),
      ),

      body:Body(),
    )

  ),
  );

}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('$logoImage')
      );
  }
}
