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
      skipText: 'пропустить',
      footerBgColor: Color.fromARGB(255, 21, 35, 228).withOpacity(.8),
      activeDotColor: Colors.white,
      footerRadius: 18.0,
      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Добро пожаловать',
          header: SvgPicture.asset("assets/page1.svg"),
          description: 'UZX - ваш мобильный ассистент',
          headerBgColor: Color.fromRGBO(237, 244, 245, 1),
        ),
        IntroScreen(
          title: 'Всё всегда под рукой',
          headerBgColor: Color.fromRGBO(237, 244, 245, 1),
          header: SvgPicture.asset("assets/page2.svg"),
          description: "Полный функционал у вас в телефоне",
        ),
        IntroScreen(
          title: 'Получай важные сообщения',
          headerBgColor: Color.fromRGBO(237, 244, 245, 1),
          header: SvgPicture.asset("assets/page3.svg"),
          description: "Полный функционал у вас в телефоне",
          
        ),
        IntroScreen(
          title: 'Всегда будьте в сети',
          headerBgColor: Color.fromRGBO(237, 244, 245, 1),
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
// class NextPage extends StatefulWidget {
//   @override
//   _NextPageState createState() => _NextPageState();
// }
// class _NextPageState extends State<NextPage> {
//   @override
//   Widget build(BuildContext context) => Container(
//         color: Colors.white,
//       );
// }
