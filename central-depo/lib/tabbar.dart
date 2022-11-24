import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class tabbar extends StatefulWidget {
  @override
  tabbarState createState() => tabbarState();
}

class tabbarState extends State<tabbar> {
  int currentIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.w600);
static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Список услуг',
      style: optionStyle,
    ),
    Text(
      'Исходящие заявки',
      style: optionStyle,
    ),
    Text(
      'Полученные заявки',
      style: optionStyle,
    ),
    Text(
      'Аккаунт',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(body: 
    /////////////////////////////////////////////////////////////////////////////////////////// 
    Center(
        child: Column(
          children: <Widget>[
           
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
              onPressed: () {},
              child: const Text(
                'Вход с помощью Face ID',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      /////////////////////////////////////////////////////////////////////////////////////////// 
      ///
      ///
      ///
      ///
      ///
      ///
      backgroundColor: Color.fromRGBO(0, 94, 124, 1),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white, //color of tabbar
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Color.fromRGBO(0, 61, 166, 0.8)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: TextStyle(
                                color: Colors.white, //tabbar text color
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == currentIndex
                                ? Colors.white
                                : Colors.black26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.menu_open_rounded ,
    Icons.download_outlined,
    Icons.send,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    'Список услуг',
    'Download',
    'Send',
    'Profile',
  ];
}
