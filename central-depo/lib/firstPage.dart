import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button_app_bar extends StatefulWidget {
  @override
  _button_app_barState createState() => _button_app_barState();
}

class _button_app_barState extends State<button_app_bar> {
  int selectedpage = 0;

  final _pageNo = [MyCustomUI(), Balance(), Message(), Menu()];

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
          // actions: <Widget>[
          //   new Stack(children: <Widget>[
          //     new IconButton(
          //         icon: Icon(Icons.notifications, size: 30),
          //         onPressed: () {
          //           setState(() {
          //             var counter = 0;
          //           });
          //         }),
          //     counter != 0
          //         ? new Positioned(
          //             right: 11,
          //             top: 11,
          //             child: new Container(
          //               padding: EdgeInsets.all(2),
          //               decoration: new BoxDecoration(
          //                 color: Colors.red,
          //                 borderRadius: BorderRadius.circular(6),
          //               ),
          //               constraints: BoxConstraints(
          //                 minWidth: 14,
          //                 minHeight: 14,
          //               ),
          //               child: Text(
          //                 '$counter',
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 9,
          //                 ),
          //                 textAlign: TextAlign.center,
          //               ),
          //             ),
          //           )
          //         : new Container()
          //   ])
          // ],
          backgroundColor: Color.fromRGBO(0, 61, 166, 1),
          toolbarOpacity: 0.8, //appbar color
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Исходящие заявки',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Text(
          'test',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
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
        child: Text(
          'Полученные заявки',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
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
        child: Text(
          'Аккаунт',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
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
///list view
class MyCustomUI extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<MyCustomUI>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late Animation<double> _animation2;
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _animation2 = Tween<double>(begin: 0, end: -30)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  Widget cards() {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: InkWell(
          enableFeedback: true,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteWhereYouGo(),
                ));
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
            padding: EdgeInsets.all(_w / 20),
            height: _w / 4.4,
            width: _w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffEDECEA),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.withOpacity(.1),
                  radius: _w / 15,
                  child: SvgPicture.asset("assets/handshake.svg", height: 30.0),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: _w / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'enw one',
                        textScaleFactor: 1.6,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                      Text(
                        'new one',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.8),
                        ),
                      )
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

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
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
            'Список услуг',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
      ),
      body: Stack(
        children: [
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 13),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
            ],
          ),
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path_1 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * .1, 0)
      ..cubicTo(size.width * .05, 0, 0, 20, 0, size.width * .08);

    Path path_2 = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width * .9, 0)
      ..cubicTo(
          size.width * .95, 0, size.width, 20, size.width, size.width * .08);

    Paint paint_2 = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    Path path_3 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0);

    canvas.drawPath(path_1, paint_1);
    canvas.drawPath(path_2, paint_1);
    canvas.drawPath(path_3, paint_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RouteWhereYouGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text('Портфель',
            style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontWeight: FontWeight.w600,
                letterSpacing: 1)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black.withOpacity(.8)),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
    );
  }
}