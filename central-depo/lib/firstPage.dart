import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';

class button_app_bar extends StatefulWidget {
  @override
  _button_app_barState createState() => _button_app_barState();
}

class _button_app_barState extends State<button_app_bar> {
  int selectedpage = 0;

  final _pageNo = [
    list_of_service(),
    Outgoing_requests(),
    Applications_received(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNo[selectedpage],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color.fromARGB(255, 12, 44, 100),
        items: [
          TabItem(icon: Icons.menu_open_sharp),
          TabItem(icon: Icons.send),
          TabItem(icon: Icons.call_received),
          TabItem(icon: Icons.perm_identity),
        ],
        initialActiveIndex: selectedpage,
        onTap: (int index) {
          setState(
            () {
              selectedpage = index;
            },
          );
        },
      ),
    );
  }
}

class Outgoing_requests extends StatefulWidget {
  const Outgoing_requests({Key? key}) : super(key: key);

  @override
  _Outgoing_requestsState createState() => _Outgoing_requestsState();
}

class _Outgoing_requestsState extends State<Outgoing_requests> {
  get counter => 45;

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
          'Исходящие заявки',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff7DDFFF),
                Color.fromARGB(255, 11, 7, 221),
              ],
            ),
          ),
          child: Center(
            child: Text(
              'List',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Applications_received extends StatefulWidget {
  const Applications_received({Key? key}) : super(key: key);

  @override
  _Applications_receivedState createState() => _Applications_receivedState();
}

class _Applications_receivedState extends State<Applications_received> {
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
          'Полученные заявки',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Color.fromRGBO(237, 244, 245, 1),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff7DDFFF),
                Color.fromARGB(255, 11, 7, 221),
              ],
            ),
          ),
          child: Center(
            child: Text(
              'List',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff7DDFFF),
                  Color.fromARGB(255, 11, 7, 221),
                ],
              ),
            ),
            child: Center(
              child: Text(
                'List',
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ));
  }
}

class list_of_service extends StatefulWidget {
  @override
  _list_of_serviceState createState() => _list_of_serviceState();
}

class _list_of_serviceState extends State<list_of_service>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -50).animate(CurvedAnimation(
        parent: _controller2, curve: Curves.fastLinearToSlowEaseIn));

    _controller.forward();
    _controller2.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
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
          'Список услуг',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Stack(
        children: [
          // background color
          backgroundColor(),
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 5.5),
              card('Нотариально заверенный договор', Icons.handshake_outlined,
                  RouteWhereYouGo0()),
              card('Внесение ценных бумаг в уставной фонд',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Дополнительное соглашение', Icons.handshake_outlined,
                  RouteWhereYouGo2()),
              card('Отчуждение', Icons.handshake_outlined, RouteWhereYouGo3()),
              card(
                  'Передача ценных бумаг государству в лице уполномоченных им лиц по договору',
                  Icons.handshake_outlined,
                  RouteWhereYouGo4()),
              card('Заявка на формирование реестра (При владении больше 5%)',
                  Icons.handshake_outlined, RouteWhereYouGo5()),
              card(
                  'Расторжение внебиржевой сделки, находящейся в процессе исполнения',
                  Icons.handshake_outlined,
                  RouteWhereYouGo6()),
              card('Нотариально заверенный договор', Icons.handshake_outlined,
                  RouteWhereYouGo7()),
              card('Внесение ценных бумаг в уставной фонд',
                  Icons.handshake_outlined, RouteWhereYouGo8()),
              card('Дополнительное соглашение', Icons.handshake_outlined,
                  RouteWhereYouGo9()),
              card(
                  'Расторжение внебиржевой сделки, находящейся в процессе исполнения',
                  Icons.handshake_outlined,
                  RouteWhereYouGo10()),
              card('Заявление о приёме ценных бумаг принадлежащих государству',
                  Icons.handshake_outlined, RouteWhereYouGo11()),
              card('Прочие информационные услуги', Icons.handshake_outlined,
                  RouteWhereYouGo12()),
              card(
                  'Купля-продажа (при размещении и выкупе эмитентом собственных выпущенных ценных бумаг)',
                  Icons.handshake_outlined,
                  RouteWhereYouGo13()),
              card('Наследование', Icons.handshake_outlined,
                  RouteWhereYouGo14()),
              card(
                  'Безвозмездная передача ценных бумаг государству в лице уполномоченных им лиц',
                  Icons.handshake_outlined,
                  RouteWhereYouGo15()),
              card('Дарение', Icons.handshake_outlined, RouteWhereYouGo16()),
              card('Залог', Icons.handshake_outlined, RouteWhereYouGo17()),
              card('Передача ценных бумаг при расчете с учредителями',
                  Icons.handshake_outlined, RouteWhereYouGo18()),
              card('Передача в доверительное или оперативное управление',
                  Icons.handshake_outlined, RouteWhereYouGo19()),
              card('Смена владельца ценных бумаг в связи с реорганизацией',
                  Icons.handshake_outlined, RouteWhereYouGo20()),
              card('Иная сделка приводящей к смене владельца',
                  Icons.handshake_outlined, RouteWhereYouGo21()),
              card(
                  'Купля-продажа акций по решению Президента Республики Узбекистан',
                  Icons.handshake_outlined,
                  RouteWhereYouGo22()),
              card(
                  'Регистрация дополнительного соглашения к зарегистрированной внебиржевой сделке с ценными бумагами',
                  Icons.handshake_outlined,
                  RouteWhereYouGo23()),
              card('Предоставление сервиса "Электронное голосование" eVOTE',
                  Icons.handshake_outlined, RouteWhereYouGo24()),
              card('Отчуждение', Icons.handshake_outlined, RouteWhereYouGo25()),
            ],
          ),
        ],
      ),
    );
  }

  Widget appBar() {
    double _w = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: Size(double.infinity, kToolbarHeight),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        child: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white.withOpacity(.5),
          elevation: 0,
          title: Text(
            '  Your App\'s name',
            style: TextStyle(
              fontSize: _w / 17,
              color: Colors.black.withOpacity(.7),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget card(String title, /*String subtitle,*/ IconData icon, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: Container(
          height: _w / 2.3,
          width: _w,
          padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              HapticFeedback.lightImpact();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => route));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                      color: Colors.white.withOpacity(.1), width: 1)),
              child: Padding(
                padding: EdgeInsets.all(_w / 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: _w / 3,
                      width: _w / 3,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: _w / 8,
                      ),
                    ),
                    SizedBox(width: _w / 40),
                    SizedBox(
                      width: _w / 2.05,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            maxLines: 6,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 1,
                            ),
                          ),
                          // Text(
                          //   subtitle,
                          //   maxLines: 1,
                          //   softWrap: true,
                          //   overflow: TextOverflow.ellipsis,
                          //   style: TextStyle(
                          //     color: Colors.white.withOpacity(1),
                          //     fontSize: _w / 25,
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          Text(
                            'Tap to know more',
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _w / 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class backgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff7DDFFF),
            Color.fromARGB(255, 11, 7, 221),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

class RouteWhereYouGo0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAMPLE  PAGE0',
        ),
      ),
    );
  }
}

class RouteWhereYouGo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EgdfgXAMPLE  PAGE1',
        ),
      ),
    );
  }
}

class RouteWhereYouGo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAMPLE  dasPAGE2',
        ),
      ),
    );
  }
}

class RouteWhereYouGo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAMPLqweE  PAGE3',
        ),
      ),
    );
  }
}

class RouteWhereYouGo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  PAGE4',
        ),
      ),
    );
  }
}

class RouteWhereYouGo5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  PAGE5',
        ),
      ),
    );
  }
}

class RouteWhereYouGo6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  PAGE6',
        ),
      ),
    );
  }
}

class RouteWhereYouGo7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  7',
        ),
      ),
    );
  }
}

class RouteWhereYouGo8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  8',
        ),
      ),
    );
  }
}

class RouteWhereYouGo9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  9',
        ),
      ),
    );
  }
}

class RouteWhereYouGo10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  10',
        ),
      ),
    );
  }
}

class RouteWhereYouGo11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  11',
        ),
      ),
    );
  }
}

class RouteWhereYouGo12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  12',
        ),
      ),
    );
  }
}

class RouteWhereYouGo13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  13',
        ),
      ),
    );
  }
}

class RouteWhereYouGo14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  14',
        ),
      ),
    );
  }
}

class RouteWhereYouGo15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  15',
        ),
      ),
    );
  }
}

class RouteWhereYouGo16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  16',
        ),
      ),
    );
  }
}

class RouteWhereYouGo17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  17',
        ),
      ),
    );
  }
}

class RouteWhereYouGo18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  18',
        ),
      ),
    );
  }
}

class RouteWhereYouGo19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  19',
        ),
      ),
    );
  }
}

class RouteWhereYouGo20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  20',
        ),
      ),
    );
  }
}

class RouteWhereYouGo21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  21',
        ),
      ),
    );
  }
}

class RouteWhereYouGo22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  22',
        ),
      ),
    );
  }
}

class RouteWhereYouGo23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  23',
        ),
      ),
    );
  }
}

class RouteWhereYouGo24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  24',
        ),
      ),
    );
  }
}

class RouteWhereYouGo25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAweqMPLE  25',
        ),
      ),
    );
  }
}
