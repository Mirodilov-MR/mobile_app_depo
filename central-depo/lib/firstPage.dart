import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';
import 'package:flutter/services.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
class button_app_bar extends StatefulWidget {
  @override
  _button_app_barState createState() => _button_app_barState();
}

class _button_app_barState extends State<button_app_bar> {
  int selectedpage = 0;

  final _pageNo = [grid2(), Balance(), Message(), Menu()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageNo[selectedpage],
        bottomNavigationBar: ConvexAppBar(
            backgroundColor: Color.fromRGBO(0, 61, 166, 1),
            items: [
              TabItem(icon: Icons.menu_open_rounded),
              TabItem(icon: Icons.send,),
              TabItem(icon: Icons.takeout_dining,),
              TabItem(icon: Icons.person ),
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
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: Color.fromRGBO(0, 61, 166, 1),
          toolbarOpacity: 0.8, //appbar color
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Исходящие заявки',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
              
              color: Color.fromARGB(255, 59, 183, 255),
              borderRadius: BorderRadius.circular(10.0),
            ),
            // Container.padding is implementd internally with Padding widgets.
            // const EdgeInsets.fromLTRB: specify padding for left/right/top/bottom.
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
           
          ),
        
      ),
    ));
  }
}

//--------------------------------------------------------------------------------------------------------

class Balance extends StatelessWidget {
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
          physics:BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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

//--------------------------------------------------------------------------------------------------------

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 61, 166, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
            'Полученные заявки',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
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
           child: const Text("helsadads",style:TextStyle(color: Colors.white,fontSize: 17)),
          ),
        
      ),
    )
    );
  }
}

//--------------------------------------------------------------------------------------------------------

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 61, 166, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
            'Аккаунт',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
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
           child:  TextButton(
              child: Text(
                "Сменить анкетные данные",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {}, 
          
        
      ),
    )
    )));
  }
}

//--------------------------------------------------------------------------------------------------------

class AddButton extends StatefulWidget {
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




class grid2 extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<grid2> with TickerProviderStateMixin {
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
       appBar: NewGradientAppBar(
    title: Text('Список услуг'),
    gradient: LinearGradient(colors: [
       Colors.cyan,
      Colors.indigo,
      ])
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
              card('Нотариально заверенный договор', Icons.handshake_sharp,
                  RouteWhereYouGo()),
              card('Внесение ценных бумаг в уставной фонд',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Дополнительное соглашение',  Icons.handshake_sharp,
                  RouteWhereYouGo2()),
              card('Отчуждение',  Icons.handshake_sharp,
                  RouteWhereYouGo()),
              card('Передача ценных бумаг государству в лице уполномоченных им лиц по договору',  Icons.handshake_sharp,
                  RouteWhereYouGo3()),
              card('Заявка на формирование реестра (При владении больше 5%)',  Icons.handshake_sharp,
                  RouteWhereYouGo4()),
              card('Расторжение внебиржевой сделки, находящейся в процессе исполнения',  Icons.handshake_sharp,
                  RouteWhereYouGo()),
              card('Нотариально заверенный договор',  Icons.handshake_sharp,
                  RouteWhereYouGo()),
              card('Внесение ценных бумаг в уставной фонд',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Дополнительное соглашение',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Расторжение внебиржевой сделки, находящейся в процессе исполнения', Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Заявление о приёме ценных бумаг принадлежащих государству',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Прочие информационные услуги',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Купля-продажа (при размещении и выкупе эмитентом собственных выпущенных ценных бумаг)',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Наследование',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Безвозмездная передача ценных бумаг государству в лице уполномоченных им лиц',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Дарение',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Залог',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Передача ценных бумаг при расчете с учредителями',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Передача в доверительное или оперативное управление',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Смена владельца ценных бумаг в связи с реорганизацией',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Иная сделка приводящей к смене владельца',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Купля-продажа акций по решению Президента Республики Узбекистан',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Регистрация дополнительного соглашения к зарегистрированной внебиржевой сделке с ценными бумагами',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Предоставление сервиса "Электронное голосование" eVOTE',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
              card('Отчуждение',  Icons.handshake_sharp,
                  RouteWhereYouGo1()),
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
          actions: [
            IconButton(
              tooltip: 'Settings',
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Icon(Icons.settings, color: Colors.black.withOpacity(.7)),
              onPressed: () {
                HapticFeedback.lightImpact();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RouteWhereYouGo();
                    },
                  ),
                );
              },
            ),
            Text('  '),
          ],
        ),
      ),
    );
  }

  Widget card(String title,  /*String subtitle,*/ IconData icon, Widget route) {
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
                        size: _w / 10,
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
                              fontSize:  17,
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