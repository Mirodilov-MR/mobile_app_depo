import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:UZCSD/firstPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => button_app_bar(),
        ),
      ),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => button_app_bar())),
      skipText: ('пропустить'),
      footerBgColor: Color.fromRGBO(0, 61, 166, 1),
      activeDotColor: Colors.white,
      footerRadius: 18.0,
      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Добро пожаловать',
          header: SvgPicture.asset("assets/logo.svg"),
          description: 'UZX - ваш мобильный ассистент',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'Всё всегда под рукой',
          headerBgColor: Colors.white,
          header: SvgPicture.asset("assets/page2.svg"),
          description: "Полный функционал у вас в телефоне",
        ),
        IntroScreen(
          title: 'Получай важные сообщения',
          headerBgColor: Colors.white,
          header: SvgPicture.asset("assets/page3.svg"),
          description: "Полный функционал у вас в телефоне",
          
        ),
        IntroScreen(
          title: 'Всегда будьте в сети',
          headerBgColor: Colors.white,
          header: SvgPicture.asset("assets/page4.svg"),
          description: "Вам не придется сидеть перед компьютером 24 часа",
        ),
      ],
    );
    return Scaffold(
      body: screens,
    );
  }
}