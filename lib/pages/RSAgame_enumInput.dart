const assetPath = 'assets/images';

enum InputType {
  rock,
  sicssor,
  paper;

  String get path => '$assetPath/$name.png';
}

enum ShowGameResult {
  playerWin('Player Win'),
  draw('draw'),
  cpuWin('cpuWin');

  const ShowGameResult(this.displayString);
  final String displayString;
}
