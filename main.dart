import 'dart:io';

void main(){
  exchanger();
}


class Scoreboard{
  double usd = 84.8;
  double eur = 101.1113;
  double rub = 1.1335;
  double som = 84.8;

  void board(){
    print('Курс на сегодня\nДоллар - $usd\nЕвро   - $eur\nРубль  - $rub\nСом    - $som \n');
    print('1) хотите обменять другую валюту на Сом');
    print('2) хотите обменять Сом  на другую валюту');
  }
}

exchanger(){
  Scoreboard bord = Scoreboard();
  bord.board();
  stdout.write('Ввыод: ');
  var answer = int.parse(stdin.readLineSync()!);
  if (answer == 2) {
    print('Выберите валюту: \nUSD \nEUR \nRUB');
    stdout.write('Ввыод: ');
    var answerType = stdin.readLineSync()!.toLowerCase();
    switch (answerType) {
      case 'usd':
        stdout.write('Сколько Долларов вы хотите?: ');
        var answerSum = int.parse(stdin.readLineSync()!);
        print('Обмен ${answerSum * bord.usd} на $answerSum USD');
        break;
      case 'eur':
        stdout.write('Сколько Евро вы хотите?: ');
        var answerSum = int.parse(stdin.readLineSync()!);
        print('Обмен ${answerSum * bord.eur} на $answerSum EUR');
        break;
      case 'rub':
        stdout.write('Сколько Рублей вы хотите?: ');
        var answerSum = int.parse(stdin.readLineSync()!);
        print('Обмен ${answerSum * bord.rub} на $answerSum RUB');
        break;
      default:
      print('=== В данный момент валюты $answerType нет! ===');
      exchanger();
    }
  }else if (answer == 1) {
    print('Выберите валюту: \nUSD \nEUR \nRUB');
    stdout.write('Ввыод: ');
    var answerType = stdin.readLineSync()!.toLowerCase();
    switch (answerType) {
      case 'usd':
        stdout.write('Укажите сумму в сомах: ');
        var answerSum = int.parse(stdin.readLineSync()!);
        print('Обмен ${answerSum / bord.usd} на $answerSum Сом');
        break;
      case 'eur':
        stdout.write('Укажите сумму в сомах: ');
        var answerSum = int.parse(stdin.readLineSync()!);
        print('Обмен ${answerSum / bord.eur} на $answerSum Сом');
        break;
      case 'rub':
        stdout.write('Укажите сумму в сомах: ');
        var answerSum = int.parse(stdin.readLineSync()!);
        print('Обмен ${answerSum / bord.rub} на $answerSum Сом');
        break;
      default:
      print('=== В данный момент валюты $answerType нет! ===');
      exchanger();
    }
  }else{
    exchanger();
  }
}