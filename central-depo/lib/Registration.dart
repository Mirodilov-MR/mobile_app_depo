import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'intro_slider.dart';
import 'privacy_terms.dart';
import 'form3.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 61, 166, 1),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "MYCABINET",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 28,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            const SizedBox(height: 4),
            Text(
              "ваш мобильный ассистент",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 17),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(310, 50),
                  primary: Color.fromRGBO(
                      255, 255, 255, 1), //background color of button
                  side: BorderSide(
                      width: 1, color: Colors.grey), //border width and color
                  elevation: 10, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(0) //content padding inside button
                  ),
              onPressed: () {
                Navigator.push(
                  context,
                  Sizetransition(FormScreen()),
                );
              },
              child: const Text(
                'privacy',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            // const SizedBox(height: 15),

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       fixedSize: const Size(310, 50),
            //       primary: Color.fromRGBO(
            //           255, 255, 255, 1), //background color of button
            //       side: BorderSide(
            //           width: 1, color: Colors.grey), //border width and color
            //       elevation: 10, //elevation of button
            //       shape: RoundedRectangleBorder(
            //           //to set border radius to button
            //           borderRadius: BorderRadius.circular(10)),
            //       padding: EdgeInsets.all(0) //content padding inside button
            //       ),
            //   onPressed: () async {
            //     String url = 'https://id.egov.uz/';
            //     if (await canLaunch(url)) {
            //       await launch(
            //         url,
            //         forceSafariVC: true,
            //         forceWebView: true,
            //         enableJavaScript: true,
            //         enableDomStorage: true,
            //         webOnlyWindowName: '_self',
            //       );
            //     }
            //   },
            //   child: const Text(
            //     'Вход с помощью One ID',
            //     style: TextStyle(fontSize: 17, color: Colors.black),
            //   ),
            // ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(310, 50),
                backgroundColor: Color.fromRGBO(
                    255, 255, 255, 1), //background color of button
                //border width and color
                elevation: 10, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(0), //content padding inside button
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  Sizetransition(MyHomePage()),
                );
              },
              icon: SvgPicture.asset("assets/face-id-s.svg", height: 40.0),
              label: Text(
                "Вход с помощью My ID",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class face_id_login_page extends StatelessWidget {
  const face_id_login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: IntroductionScreen(
        globalBackgroundColor: Color.fromARGB(255, 237, 239, 241),
        next: const Icon(Icons.navigate_next),
        onDone: Navigator.of(context).pop,
        done: const Text("Done"),
        dotsFlex: 3,
        pages: [
          PageViewModel(
            title: 'Зачем нужна удаленная аутентификация',
            body: 'Для того, чтобы:',
            image: SvgPicture.asset("assets/Frame.svg"),
          ),
          PageViewModel(
            title: 'Зачем нужна удаленная аутентификация',
            body: 'Для того, чтобы:',
            image: SvgPicture.asset("assets/Frame.svg"),
          ),
          PageViewModel(
            title: 'Зачем нужна удаленная аутентификация',
            body: 'Для того, чтобы:',
            image: SvgPicture.asset("assets/page2.svg"),
          ),
          PageViewModel(
            title: 'Зачем нужна удаленная аутентификация',
            body: 'Для того, чтобы:',
            image: SvgPicture.asset("assets/page2.svg"),
          ),
          PageViewModel(
            title: 'FlutterBeads',
            body: 'Для того, чтобы:',
            image: SvgPicture.asset("assets/page2.svg"),
          ),
          PageViewModel(
            title: 'Зачем нужна удаленная аутентификация',
            body: 'Для того, чтобы:',
            image: SvgPicture.asset("assets/page2.svg"),
          ),
        ],
      ),
    );
  }
}
