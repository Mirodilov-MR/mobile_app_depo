// import 'dart:async';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class grid2 extends StatefulWidget {
//   @override
//   _MyCustomUIState createState() => _MyCustomUIState();
// }

// class _MyCustomUIState extends State<grid2> with TickerProviderStateMixin {
//  late AnimationController _controller;
//  late AnimationController _controller2;
//  late Animation<double> _animation;
//   late Animation<double> _animation2;

//   @override
//   void initState() {
//     super.initState();

//     _controller2 = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );

//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );

//     _animation = Tween<double>(begin: 0, end: 1)
//         .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
//       ..addListener(() {
//         setState(() {});
//       });

//     _animation2 = Tween<double>(begin: 0, end: -50).animate(CurvedAnimation(
//         parent: _controller2, curve: Curves.fastLinearToSlowEaseIn));

//     _controller.forward();
//     _controller2.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _controller2.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       extendBodyBehindAppBar: true,
      
//       body: Stack(
//         children: [
//           // background color
//           backgroundColor(),

//           /// ListView
//           ListView(
//             physics:
//                 BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//             children: [
//               SizedBox(height: _w / 5.5),
//               card('Нотариально заверенный договор', Icons.handshake_sharp,
//                   RouteWhereYouGo()),
//               card('Внесение ценных бумаг в уставной фонд',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Дополнительное соглашение',  Icons.handshake_sharp,
//                   RouteWhereYouGo2()),
//               card('Отчуждение',  Icons.handshake_sharp,
//                   RouteWhereYouGo()),
//               card('Передача ценных бумаг государству в лице уполномоченных им лиц по договору',  Icons.handshake_sharp,
//                   RouteWhereYouGo3()),
//               card('Заявка на формирование реестра (При владении больше 5%)',  Icons.handshake_sharp,
//                   RouteWhereYouGo4()),
//               card('Расторжение внебиржевой сделки, находящейся в процессе исполнения',  Icons.handshake_sharp,
//                   RouteWhereYouGo()),
//               card('Нотариально заверенный договор',  Icons.handshake_sharp,
//                   RouteWhereYouGo()),
//               card('Внесение ценных бумаг в уставной фонд',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Дополнительное соглашение',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Расторжение внебиржевой сделки, находящейся в процессе исполнения', Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Заявление о приёме ценных бумаг принадлежащих государству',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Прочие информационные услуги',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Купля-продажа (при размещении и выкупе эмитентом собственных выпущенных ценных бумаг)',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Наследование',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Безвозмездная передача ценных бумаг государству в лице уполномоченных им лиц',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Дарение',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Залог',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Передача ценных бумаг при расчете с учредителями',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Передача в доверительное или оперативное управление',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Смена владельца ценных бумаг в связи с реорганизацией',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Иная сделка приводящей к смене владельца',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Купля-продажа акций по решению Президента Республики Узбекистан',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Регистрация дополнительного соглашения к зарегистрированной внебиржевой сделке с ценными бумагами',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Предоставление сервиса "Электронное голосование" eVOTE',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//               card('Отчуждение',  Icons.handshake_sharp,
//                   RouteWhereYouGo1()),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget appBar() {
//     double _w = MediaQuery.of(context).size.width;
//     return PreferredSize(
//       preferredSize: Size(double.infinity, kToolbarHeight),
//       child: ClipRRect(
//         borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
//         child: AppBar(
//           brightness: Brightness.light,
//           backgroundColor: Colors.white.withOpacity(.5),
//           elevation: 0,
//           title: Text(
//             '  Your App\'s name',
//             style: TextStyle(
//               fontSize: _w / 17,
//               color: Colors.black.withOpacity(.7),
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           actions: [
//             IconButton(
//               tooltip: 'Settings',
//               splashColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               icon: Icon(Icons.settings, color: Colors.black.withOpacity(.7)),
//               onPressed: () {
//                 HapticFeedback.lightImpact();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return RouteWhereYouGo();
//                     },
//                   ),
//                 );
//               },
//             ),
//             Text('  '),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget card(String title,  /*String subtitle,*/ IconData icon, Widget route) {
//     double _w = MediaQuery.of(context).size.width;
//     return Opacity(
//       opacity: _animation.value,
//       child: Transform.translate(
//         offset: Offset(0, _animation2.value),
//         child: Container(
//           height: _w / 2.3,
//           width: _w,
//           padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
//           child: InkWell(
//             highlightColor: Colors.transparent,
//             splashColor: Colors.transparent,
//             onTap: () {
//               HapticFeedback.lightImpact();
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => route));
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(.2),
//                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                   border: Border.all(
//                       color: Colors.white.withOpacity(.1), width: 1)),
//               child: Padding(
//                 padding: EdgeInsets.all(_w / 50),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: _w / 3,
//                       width: _w / 3,
//                       decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(.2),
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Icon(
//                         icon,
//                         color: Colors.white,
//                         size: _w / 10,
//                       ),
//                     ),
//                     SizedBox(width: _w / 40),
//                     SizedBox(
//                       width: _w / 2.05,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             title,
//                             maxLines: 6,
//                             softWrap: true,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.start,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize:  17,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 1,
//                               wordSpacing: 1,
//                             ),
//                           ),
//                           // Text(
//                           //   subtitle,
//                           //   maxLines: 1,
//                           //   softWrap: true,
//                           //   overflow: TextOverflow.ellipsis,
//                           //   style: TextStyle(
//                           //     color: Colors.white.withOpacity(1),
//                           //     fontSize: _w / 25,
//                           //     fontWeight: FontWeight.w600,
//                           //   ),
//                           // ),
//                           Text(
//                             'Tap to know more',
//                             maxLines: 1,
//                             softWrap: true,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: _w / 30,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class backgroundColor extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color(0xff7DDFFF),
//             Color.fromARGB(255, 11, 7, 221),
           
//           ],
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//         ),
//       ),
//     );
//   }
// }

// class RouteWhereYouGo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text(
//           'EXAMPLE  PAGE',
//         ),
//       ),
//     );
//   }
// }
// class RouteWhereYouGo1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text(
//           'EgdfgXAMPLE  PAGE',
//         ),
//       ),
//     );
//   }
// }
// class RouteWhereYouGo2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text(
//           'EXAMPLE  dasPAGE',
//         ),
//       ),
//     );
//   }
// }
// class RouteWhereYouGo3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text(
//           'EXAMPLqweE  PAGE',
//         ),
//       ),
//     );
//   }
// }
// class RouteWhereYouGo4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         elevation: 50,
//         centerTitle: true,
//         shadowColor: Colors.black.withOpacity(.5),
//         title: Text(
//           'EXAweqMPLE  PAGE',
//         ),
//       ),
//     );
//   }
// }
