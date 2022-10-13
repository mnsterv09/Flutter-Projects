// ignore: depend_on_referenced_packages
import 'package:teledart/teledart.dart';
// ignore: depend_on_referenced_packages
import 'package:teledart/telegram.dart';

void main() async {
  var BOT_TOKEN = '5609709352:AAECFxklsj3Q8jvdmILX_iELZAR_4MFYGHM';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.start();

  teledart.onCommand('start').listen((message) => message
      .reply('Bem-vindo ao Vns Bot, para mais informações utilize o /help'));

  teledart
      .onMessage(keyword: 'start')
      .where((message) => message.text?.contains('start') ?? false)
      .listen((message) => message.replyPhoto(
          "https://media.newyorker.com/photos/59095bb86552fa0be682d9d0/master/w_2560%2Cc_limit/Monkey-Selfie.jpg",
          caption: 'Welcome to real monkey king Vns Bot'));

  teledart
      .onCommand('help')
      .listen((message) => message.reply('Funções do bot: /users'));
  teledart
      .onCommand('users')
      .listen((message) => message.reply('Gerando usuários aletórios...'));
}
