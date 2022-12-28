import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Tutorial",
      home: FormScreen(),
    ));

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController JSHSHRController = TextEditingController();
  TextEditingController PassportController = TextEditingController();
  TextEditingController IsmController = TextEditingController();
  TextEditingController FamilyaController = TextEditingController();
  TextEditingController SharifController = TextEditingController();
  TextEditingController Tugilgan_JoyController = TextEditingController();
  TextEditingController Tugilgan_sanaController = TextEditingController();
  TextEditingController Tugilgan_mamlakatController = TextEditingController();

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
          'Заявление',
          style: TextStyle(color: Color.fromARGB(255, 2, 2, 2), fontSize: 20),
        ),
      ),
      // backgroundColor: Colors.blue,
      body: Form(
        
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            const SizedBox(height: 70.0,),
            Padding(              
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(                
                controller: JSHSHRController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'JSHSHR yozing';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  
                  labelText: 'JSHSHR',
                  prefixIcon: Icon(Icons.numbers),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "14 raqamdan iborat",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: PassportController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Passport seriya raqamini yozing';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Passport seriya raqami',
                  prefixIcon: Icon(Icons.numbers),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "AA 1234567",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: IsmController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ismingizni yozing';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Ism',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "Aziz",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: FamilyaController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Familyangizni yozing';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Familya',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "Azizov",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: SharifController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Sharifingizni yozing';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Sharif',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "Aziz o'g'li",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: Tugilgan_JoyController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tug'ilgan shahar";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Tug'ilgan joy",
                  prefixIcon: Icon(Icons.location_city ),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "Toshkent",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: Tugilgan_mamlakatController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tug'ilgan Davlatingiz";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Mamlakat',
                  prefixIcon: Icon(Icons.location_city),
                  suffixIcon: Icon(Icons.delete_outline, color: Colors.red),
                  hintText: "Uzbekistan",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: Tugilgan_sanaController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tug'ilgan sana";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Tug'ilgan sana",
                  hintText: "19.09.1991",
                  prefixIcon: Icon(Icons.date_range),
                  suffixIcon: Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  debugPrint("JSHSHR is ${JSHSHRController.text}");
                  debugPrint("Passport is ${PassportController.text}");
                  debugPrint("Ism is ${IsmController.text}");
                  debugPrint("Familya is ${FamilyaController.text}");
                  debugPrint("Sharif is ${SharifController.text}");
                  debugPrint("Tugilgan_Joy is ${Tugilgan_JoyController.text}");
                  debugPrint("Tugilgan_sana is ${Tugilgan_sanaController.text}");
                  debugPrint("Tugilgan_mamlakat is ${Tugilgan_mamlakatController}");
                }
              },
              child: Text("Kengisi"),
            ),
          ],
        ),
      ),
    );
  }
}
