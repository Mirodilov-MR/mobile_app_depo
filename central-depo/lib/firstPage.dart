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

  final _pageNo = [grid2(), Home(), Message(), Menu()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageNo[selectedpage],
        bottomNavigationBar: ConvexAppBar(
            backgroundColor: Color.fromARGB(255, 12, 44, 100),
            items: [
              TabItem(icon: Icons.menu_open_rounded),
              TabItem(
                icon: Icons.send,
              ),
              TabItem(
                icon: Icons.takeout_dining,
              ),
              TabItem(icon: Icons.person),
            ],
            initialActiveIndex: selectedpage,
            onTap: (int index) {
              setState(() {
                selectedpage = index;
              });
            }));
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            )),
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

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
          )),
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
      body:  Center(
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
        )
    );
  }
}

class grid2 extends StatefulWidget {
  @override
  _grid2State createState() => _grid2State();
}

class _grid2State extends State<grid2> with TickerProviderStateMixin {
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

          /// ListView
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 5.5),
              card('Нотариально заверенный договор', Icons.handshake_outlined,
                  RouteWhereYouGo()),
              card('Внесение ценных бумаг в уставной фонд',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Дополнительное соглашение', Icons.handshake_outlined,
                  RouteWhereYouGo2()),
              card('Отчуждение', Icons.handshake_outlined, RouteWhereYouGo()),
              card(
                  'Передача ценных бумаг государству в лице уполномоченных им лиц по договору',
                  Icons.handshake_outlined,
                  RouteWhereYouGo3()),
              card('Заявка на формирование реестра (При владении больше 5%)',
                  Icons.handshake_outlined, RouteWhereYouGo4()),
              card(
                  'Расторжение внебиржевой сделки, находящейся в процессе исполнения',
                  Icons.handshake_outlined,
                  RouteWhereYouGo()),
              card('Нотариально заверенный договор', Icons.handshake_outlined,
                  RouteWhereYouGo()),
              card('Внесение ценных бумаг в уставной фонд',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Дополнительное соглашение', Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card(
                  'Расторжение внебиржевой сделки, находящейся в процессе исполнения',
                  Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card('Заявление о приёме ценных бумаг принадлежащих государству',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Прочие информационные услуги', Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card(
                  'Купля-продажа (при размещении и выкупе эмитентом собственных выпущенных ценных бумаг)',
                  Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card(
                  'Наследование', Icons.handshake_outlined, RouteWhereYouGo1()),
              card(
                  'Безвозмездная передача ценных бумаг государству в лице уполномоченных им лиц',
                  Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card('Дарение', Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Залог', Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Передача ценных бумаг при расчете с учредителями',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Передача в доверительное или оперативное управление',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Смена владельца ценных бумаг в связи с реорганизацией',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Иная сделка приводящей к смене владельца',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card(
                  'Купля-продажа акций по решению Президента Республики Узбекистан',
                  Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card(
                  'Регистрация дополнительного соглашения к зарегистрированной внебиржевой сделке с ценными бумагами',
                  Icons.handshake_outlined,
                  RouteWhereYouGo1()),
              card('Предоставление сервиса "Электронное голосование" eVOTE',
                  Icons.handshake_outlined, RouteWhereYouGo1()),
              card('Отчуждение', Icons.handshake_outlined, RouteWhereYouGo1()),
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

class RouteWhereYouGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'EXAMPLE  PAGE',
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
          'EgdfgXAMPLE  PAGE',
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
          'EXAMPLE  dasPAGE',
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
          'EXAMPLqweE  PAGE',
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
          'EXAweqMPLE  PAGE',
        ),
      ),
    );
  }
}
