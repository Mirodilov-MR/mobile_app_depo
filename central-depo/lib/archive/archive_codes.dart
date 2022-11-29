
///list view
// class listofservice extends StatefulWidget {
//   @override
//   _listofserviceState createState() => _listofserviceState();
// }

// class _listofserviceState extends State<listofservice>
//     with SingleTickerProviderStateMixin {
//   late Animation<double> _animation;
//   late Animation<double> _animation2;
//   late AnimationController _controller;

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//     _animation = Tween<double>(begin: 0, end: 1)
//         .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
//       ..addListener(() {
//         setState(() {});
//       });
//     _animation2 = Tween<double>(begin: 0, end: -30)
//         .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

//     _controller.forward();
//   }

//   Widget cards() {
//     double _w = MediaQuery.of(context).size.width;
//     return Opacity(
//       opacity: _animation.value,
//       child: Transform.translate(
//         offset: Offset(0, _animation2.value),
//         child: InkWell(
//           enableFeedback: true,
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => RouteWhereYouGo(),
//                 ));
//           },
//           highlightColor: Colors.transparent,
//           splashColor: Colors.transparent,
//           child: Container(
//             margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
//             padding: EdgeInsets.all(_w / 20),
//             height: _w / 4.4,
//             width: _w,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: Color(0xffEDECEA),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.blue.withOpacity(.1),
//                   radius: _w / 15,
//                   child: SvgPicture.asset("assets/handshake.svg", height: 30.0),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   width: _w / 2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'enw one',
//                         textScaleFactor: 1.6,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black.withOpacity(.7),
//                         ),
//                       ),
//                       Text(
//                         'new one',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black.withOpacity(.8),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color(0xffF5F5F5),
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(0, 61, 166, 1),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(15),
//           ),
//         ),
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: Text(
//             'Список услуг',
//             style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.white,
//                 // fontStyle: FontStyle.italic,
//                 fontWeight: FontWeight.bold),
//           ),
//       ),
//       body: Stack(
//         children: [
//           ListView(
//             physics:
//                 BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//             children: [
//               SizedBox(height: _w / 13),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//               cards(),
//             ],
//           ),
//           CustomPaint(
//             painter: MyPainter(),
//             child: Container(height: 0),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint_1 = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;

//     Path path_1 = Path()
//       ..moveTo(0, 0)
//       ..lineTo(size.width * .1, 0)
//       ..cubicTo(size.width * .05, 0, 0, 20, 0, size.width * .08);

//     Path path_2 = Path()
//       ..moveTo(size.width, 0)
//       ..lineTo(size.width * .9, 0)
//       ..cubicTo(
//           size.width * .95, 0, size.width, 20, size.width, size.width * .08);

//     Paint paint_2 = Paint()
//       ..color = Colors.white
//       ..strokeWidth = 1
//       ..style = PaintingStyle.stroke;
//     Path path_3 = Path()
//       ..moveTo(0, 0)
//       ..lineTo(size.width, 0);

//     canvas.drawPath(path_1, paint_1);
//     canvas.drawPath(path_2, paint_1);
//     canvas.drawPath(path_3, paint_2);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class RouteWhereYouGo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.light,
//         backgroundColor: Colors.white,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text('Портфель',
//             style: TextStyle(
//                 color: Colors.black.withOpacity(.7),
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 1)),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black.withOpacity(.8)),
//           onPressed: () => Navigator.maybePop(context),
//         ),
//       ),
//     );
//   }
// }



// class newgrid extends StatefulWidget {
//   @override
//   _newgridState createState() => _newgridState();
// }

// class _newgridState extends State<newgrid>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );

//     _animation = Tween<double>(begin: 0, end: 1)
//         .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
//       ..addListener(() {
//         setState(() {});
//       });

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color(0xffF5F5F5),
//       body: Stack(
//         children: [
//           ListView(
//             physics:
//                 BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//             children: [
//               searchBar(),
//               SizedBox(height: _w / 20),
//               groupOfCards(
//                   'Нотариально заверенный договор',
//                   RouteWhereYouGo(),
//                   'Внесение ценных бумаг в уставной фонд',
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Дополнительное соглашение',                  
//                   RouteWhereYouGo(),
//                   'Отчуждение',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Передача ценных бумаг государству в лице уполномоченных им лиц по договору',                  
//                   RouteWhereYouGo(),
//                   'Заявка на формирование реестра (При владении больше 5%)',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Расторжение внебиржевой сделки, находящейся в процессе исполнения',                  
//                   RouteWhereYouGo(),
//                   'Нотариально заверенный договор',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Внесение ценных бумаг в уставной фонд',                  
//                   RouteWhereYouGo(),
//                   'Дополнительное соглашение',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Отчуждение',                  
//                   RouteWhereYouGo(),
//                   'Расторжение внебиржевой сделки, находящейся в процессе исполнения',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Заявление о приёме ценных бумаг принадлежащих государству',                  
//                   RouteWhereYouGo(),
//                   'Прочие информационные услуги',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Купля-продажа (при размещении и выкупе эмитентом собственных выпущенных ценных бумаг)',                  
//                   RouteWhereYouGo(),
//                   'Наследование',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Безвозмездная передача ценных бумаг государству в лице уполномоченных им лиц',                  
//                   RouteWhereYouGo(),
//                   'Дарение',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Залог',                  
//                   RouteWhereYouGo(),
//                   'Передача ценных бумаг при расчете с учредителями',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Передача в доверительное или оперативное управление',                  
//                   RouteWhereYouGo(),
//                   'Смена владельца ценных бумаг в связи с реорганизацией',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Иная сделка приводящей к смене владельца',                  
//                   RouteWhereYouGo(),
//                   'Купля-продажа акций по решению Президента Республики Узбекистан',                  
//                   RouteWhereYouGo()),
//               groupOfCards(
//                   'Регистрация дополнительного соглашения к зарегистрированной внебиржевой сделке с ценными бумагами',                  
//                   RouteWhereYouGo(),
//                   'Предоставление сервиса "Электронное голосование" eVOTE',                  
//                   RouteWhereYouGo()),
                  
//             ],
//           ),
//         ],
//       ),
//     );
//   }

  // Widget settingIcon() {
  //   double _w = MediaQuery.of(context).size.width;
  //   return Padding(
  //     padding: EdgeInsets.fromLTRB(0, _w / 10, _w / 20, 0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Container(
  //           height: _w / 8.5,
  //           width: _w / 8.5,
  //           alignment: Alignment.center,
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.black.withOpacity(.1),
  //                 blurRadius: 30,
  //                 offset: Offset(0, 15),
  //               ),
  //             ],
  //             shape: BoxShape.circle,
  //           ),
  //           // child: IconButton(
  //           //   splashColor: Colors.transparent,
  //           //   highlightColor: Colors.transparent,
  //           //   tooltip: 'Settings',
  //           //   icon: Icon(Icons.settings,
  //           //       size: _w / 17, color: Colors.black.withOpacity(.6)),
  //           //   onPressed: () {
  //           //     // Navigator.of(context).push(
  //           //       // MyFadeRoute(
  //           //       //   route: RouteWhereYouGo(),),
  //           //     // );
  //           //   },
  //           // ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

//   Widget searchBar() {
//     double _w = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: EdgeInsets.fromLTRB(_w / 20, _w / 25, _w / 20, 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             height: _w / 8.5,
//             width: _w / 1.36,
//             padding: EdgeInsets.symmetric(horizontal: _w / 60),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(99),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(.1),
//                   blurRadius: 30,
//                   offset: Offset(0, 15),
//                 ),
//               ],
//             ),
//             child: TextField(
//               maxLines: 1,
//               decoration: InputDecoration(
//                 fillColor: Colors.transparent,
//                 filled: true,
//                 hintStyle: TextStyle(
//                     color: Colors.black.withOpacity(.4),
//                     fontWeight: FontWeight.w600,
//                     fontSize: _w / 22),
//                 prefixIcon:
//                     Icon(Icons.search, color: Colors.black.withOpacity(.6)),
//                 hintText: 'Поиск клиентов услуги',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide.none),
//                 contentPadding: EdgeInsets.zero,
//               ),
//             ),
//           ),
//           SizedBox(height: _w / 14),
//           Container(
//             width: _w / 1.15,
//             child: Text(
//               'Список услуг',
//               textScaleFactor: 1.4,
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black.withOpacity(.7),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget groupOfCards(
//       String title1,
//       Widget route1,
//       String title2,
//       Widget route2) {
//     double _w = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           card(title1, route1),
//           card(title2, route2),
//         ],
//       ),
//     );
//   }

//   Widget card(String title, Widget route) {
//     double _w = MediaQuery.of(context).size.width;
//     return Opacity(
//       opacity: _animation.value,
//       child: InkWell(
//         highlightColor: Colors.transparent,
//         splashColor: Colors.transparent,
//         onTap: () {
//           // Navigator.of(context).push(MyFadeRoute(route: route));
//         },
//         child: Container(
//           width: _w / 2.36,
//           height: _w / 1.8,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 50),
//             ],
//           ),
//           child: Column(
//             children: [
//               Container(
//                 width: _w / 2.36,
//                 height: _w / 2.6,
//                 decoration: BoxDecoration(
//                   color: Color(0xff5C71F3),
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(20),
//                   ),
//                 ),
//                 alignment: Alignment.center,
//                 // child: SvgPicture.asset("assets/page2.svg"),
//               ),
//               // Image.asset(
//               //   image,
//               //   fit: BoxFit.cover,
//               //   width: _w / 2.36,
//               //   height: _w / 2.6),
//               Container(
//                 height: _w / 6,
//                 width: _w / 2.36,
//                 padding: EdgeInsets.symmetric(horizontal: _w / 25),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       textScaleFactor: 1.350,
//                       maxLines: 3,
//                       softWrap: true,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         color: Colors.black.withOpacity(.8),
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class MyFadeRoute extends PageRouteBuilder {
//   final Widget page;
//   final Widget route;

//   MyFadeRoute(this.page, this.route)
//       : super(
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               page,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: route,
//           ),
//         );
// }

// class RouteWhereYouGo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.light,
//         backgroundColor: Colors.white,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text('EXAMPLE  PAGE',
//             style: TextStyle(
//                 color: Colors.black.withOpacity(.7),
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 1)),
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.black.withOpacity(.8),
//           ),
//           onPressed: () => Navigator.maybePop(context),
//         ),
//       ),
//     );
//   }
// }




//-------------------------------------------------------------------------------------------------------------------------

/* class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Новый счет',
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromRGBO(237, 244, 245, 1),
      body: Center(
        child: Text(
          'listview',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
*/




//--------------------------------------------------------------------------------------------------------

/* class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 61, 166, 1),
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(_w / 30),
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: 26,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: -300,
                verticalOffset: -850,
                child: Container(
                  margin: EdgeInsets.only(bottom: _w / 20),
                  height: _w / 4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 40,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
*/


/*
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        title: Text(
          'Аккаунт',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
        backgroundColor: Color.fromRGBO(237, 244, 245, 1),
        body: Center(
            child: Container(

                // padding: const EdgeInsets.all(10.0),
                width: 400.0,
                height: 615.0,
                child: Container(
                  width: 400.0,
                  height: 215.0,
                  // Container.color should not be set when decoration is set.
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 69, 109),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // Container.padding is implementd internally with Padding widgets.
                  // const EdgeInsets.fromLTRB: specify padding for left/right/top/bottom.
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
                  child: TextButton(
                    child: Text(
                      "Сменить анкетные данные",
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () {},
                  ),
                ))));
  }
}
*/