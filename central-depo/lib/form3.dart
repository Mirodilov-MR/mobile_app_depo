import 'dart:ui';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
        backgroundColor: Color.fromARGB(249, 64, 89, 141),
        title: Text(
          'Заявление',
          style: TextStyle(
              color: Color.fromARGB(255, 253, 253, 253), fontSize: 20),
        ),
      ),
      // backgroundColor: Colors.blue,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            const SizedBox(
              height: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: JSHSHRController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'JSHSHIR yozing';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'JSHSHIR',
                  // prefixIcon: Icon(Icons.numbers),
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
                  // prefixIcon: Icon(Icons.numbers),
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
                  prefixIcon: Icon(Icons.person_outlined),
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
                  prefixIcon: Icon(Icons.person_outlined),
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
                  prefixIcon: Icon(Icons.person_outlined),
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
                  // prefixIcon: Icon(Icons.location_city),
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
                  // prefixIcon: Icon(Icons.location_city),
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
                  hintText: "kk/oy/yyyy",
                  prefixIcon: Icon(Icons.date_range),
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
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(310, 50),
                  primary: Color.fromARGB(
                      249, 64, 89, 141), //background color of button
                  side: BorderSide(
                      width: 1, color: Colors.grey), //border width and color
                  elevation: 5, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(0) //content padding inside button
                  ),
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
                  Navigator.push(
                    context,
                    Sizetransition(Oferta()),
                  );
                }
              },
              child: Text("Kengisi", style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}

class Oferta extends StatelessWidget {
  String content =
      ''' “Қимматли қоғозлар марказий депозитарийси” давлат корхонаси томонидан Ўзбекистон Республикасининг резидентлари ёки норезидентлари учун уларнинг шахсий иштирокисиз депо ҳисобварақларини масофадан туриб очиш ТАРТИБИ Муқаддима. 1-боб. Умумий қоидалар.
2-боб. Мижозларни рақамли идентификация қилиш.
3-боб. Рақамли идентификацияни қўллаш.
4-боб. Мижозларга депо ҳисобварақни масофадан туриб очиш ва депо ҳисобварақни очишни рад этиш тартиби.
5-боб. Якуний қоидалар.
Мазкур “Қимматли қоғозлар марказий депозитарийси” давлат корхонаси томонидан Ўзбекистон Республикасининг резидентлари ёки норезидентлари учун уларнинг шахсий иштирокисиз депо ҳисобварақларини масофадан туриб очиш” Тартиби “Қимматли қоғозлар бозори тўғрисида”ги, “Жиноий фаолиятдан олинган даромадларни легаллаштиришга, терроризмни молиялаштиришга ва оммавий қирғин қуролини тарқатишни молиялаштиришга қарши курашиш тўғрисида”ги Ўзбекистон Республикаси Қонунлари Ўзбекистон Республикаси Президентининг “Капитал бозорини янада ривожлантириш чора-тадбирлари тўғрисида” 2021 йил 13 апрелдаги ПФ-6207-сон ва “Тадбиркорлик муҳитини яхшилаш ва ҳусусий секторни ривожлантириш орқали барқарор иқтисодий ўсиш учун шарт-шароитлар яратиш борасидаги навбатдаги ислоҳотлар тўғрисида” 2022 йил 8 апрелдаги ПФ-101-сон Фармонларига асосан ишлаб чиқилган бўлиб, “Қимматли қоғозлар марказий депозитарийси” ДК (кейинги матн бўйича – Марказий депозитарий) томонидан Ўзбекистон Республикасининг резидентлари ёки норезидентлари бўлган юридик ва жисмоний шахсларга (кейинги матн бўйича – мижозлар) ўз шахсий иштирокисиз депо ҳисобварақларини масофадан туриб очиш тартибини белгилайди.
1-боб. Умумий қоидалар
1. Ушбу Тартибда қуйидаги асосий тушунчалардан фойдаланилади:
мижоз - қимматли қоғозлар бозорида Марказий депозитарийнинг хизматларидан фойдаланувчи шахс;
депонентларнинг ягона базаси – Марказий депозитарий мижозларининг маълумотларни белгиланган тузилишда ўз ичига олган ахборотлар базаси;
депонент коди - ноёб код ҳисобланади, у депонентнинг анкета маълумотлари асосида “Депо” ҳисоб рақамини очишда бир марта берилади ва ўзгартирилмайди.
ички назорат қоидалари – жиноий фаолиятдан олинган даромадларни легаллаштиришга, терроризмни молиялаштиришга ва оммавий қирғин қуролини тарқатишни молиялаштиришга қарши курашиш бўйича ички назорат қоидалари;
рақамли идентификация – ахборот тизимларидан фойдаланган ҳолда мазкур Тартибда белгиланган талаблар асосида мижознинг шахсини текшириш ва тасдиқлаш жараёни;
Рўйхат – терроризмга, оммавий қирғин қуролини тарқатишга қарши курашишни амалга оширувчи давлат органлари ва Ўзбекистон Республикасининг бошқа ваколатли органларидан тақдим этилаётган маълумотлар, шунингдек чет давлатларнинг ваколатли органлари ва халқаро ташкилотларидан расмий каналлар орқали тақдим этилаётган маълумотлар асосида Ўзбекистон Республикаси Бош прокуратураси ҳузуридаги Иқтисодий жиноятларга қарши курашиш департаменти томонидан тузилган террорчилик фаолиятида ёки оммавий қирғин қуролини тарқатишда иштирок этаётган ёки иштирок этишда гумон қилинаётган шахслар рўйхати;
Мижозни эҳтимолий таваккалчилик даражаси - жиноий фаолиятдан олинган даромадларни легаллаштиришга ва терроризмни молиялаштиришга қарши курашиш тўғрисидаги қонун ҳужжатлари талабларига мувофиқ мижоз маълумотларини таққослаш натижалари бўйича аниқланган таваккалчилик даражаси;
электрон рақамли имзо - электрон ҳужжатдаги мазкур электрон ҳужжат ахборотини электрон рақамли имзонинг ёпиқ калитидан фойдаланган ҳолда махсус ўзгаришлар натижасида ҳосил қилинган ҳамда электрон рақамли имзонинг очиқ калити ёрдамида электрон ҳужжатдаги ахборотда хатолик мавжуд эмаслигини аниқлаш ва электрон рақамли имзо калитининг эгасини идентификация қилиш имконини берадиган имзо.
2. Ўзбекистон Республикасининг резидентлари ёки норезидентлари бўлган мижозлар учун уларнинг шахсий иштирокисиз қимматли қоғозлар учун депо ҳисобварақларини масофадан туриб очиш босқичлари қуйидагилардан иборат:
1) Мижознинг мурожаатини (аризасини) қабул қилиш;
2) Мижозни рақамли идентификация қилиш;
3) Мижозни жиноий фаолиятдан олинган даромадларни легаллаштириш ва терроризмни молиялаштиришга қарши курашиш тўғрисидаги қонунчилик талабларини инобатга олган ҳолда ҳамда ички назорат қоидаларига мувофиқ текшириш;
4) Мижозни эҳтимолий таваккалчилик даражасини аниқлаш;
5) Мижоз билан шартнома тузиш;
6) Мижозни депонентларнинг ягона базаси тизимида рўйхатдан ўтказиш ҳамда депонент кодини бериш;
7) Мижозга депо ҳисобварақ очиш.
3. Марказий депозитарий мижозларни рақамли идентификация қилиш тизимини йўлга қўйишдан олдин:
мижозни эҳтимолий таваккалчилик даражасини аниқлаш чораларини кўради;
ўз ички қоидаларида (регламентларида) мижозларни рақамли идентификация қилиш тартибини белгилайди.
4. Марказий депозитарий:
мижознинг идентификация маълумотларини ҳимоя қилиш бўйича зарур бўлган ҳуқуқий, ташкилий ва техник чораларни кўради;
идентификация маълумотларининг ишончлилиги ва тўғрилигини таъминлайди;
идентификация маълумотларининг сохталаштирилишига, рухсатсиз ўзгартирилишига ва ошкор қилинишига қарши чораларни кўради;
идентификация маълумотларини сақлаш ва улардан фойдаланиш устидан назоратни таъминлайди;
депо ҳисобварақларини масофадан туриб очишда ахборот хавфсизлиги билан боғлиқ операцион хатарларни камайтириш ва уларни назорат қилиш бўйича чора-тадбирлар тизимини, шу жумладан мижозни рақамли идентификация қилиш пайтида хавфсизликни таъминлайди;
алоқа каналлари орқали хизматлардан фойдаланишда мижоз учун кўп факторли идентификация (мобил телефонга боғланиш ёки SMS хабар юбориш ёхуд электрон почта, шунингдек ижтимоий тармоқлар орқали мижознинг шахсини қўшимча равишда текшириш ва тасдиқлаш) тартиб-қоидаларини қўллайди;
соҳага доир бошқа қонунчилик ҳужжатларига мувофиқ ахборот хавфсизлиги бўйича зарурий талабларни қўллайди.
5. Марказий депозитарий мижозни рақамли идентификация қилишда ўз ахборот тизимларидан ёки шартнома асосида учинчи шахслар томонидан
тақдим этилган ахборот тизимларидан белгиланган тартибда фойдаланиши мумкин.
6. Мижозларни рақамли идентификация қилиш учун фойдаланиладиган ахборот тизими:
Ўзбекистон Республикаси ҳудудидаги серверларда жойлашган бўлиши;
“Электрон ҳукумат” тизимининг жисмоний ва юридик шахслар марказий маълумотлар базаларига (бундан буён матнда марказий маълумотлар базаси деб юритилади) ҳамда Ўзбекистон Республикаси Бош Прокуратураси Иқтисодий жиноятларга қарши курашиш департаменти базаси билан интеграллашган бўлиши;
ахборотни узатишда ўзаро шифрлашни таъминлаши;
мижозларни идентификация қилишда ҳамда мижознинг барча харакатлари, шу жумладан депо ҳисобварақ очиш билан боғлиқ ҳужжатларни расмийлаштирилиши электрон рақамли имзо билан тасдиқланиши имконини бериши керак.
Шунингдек, ушбу ахборот тизими қўшимча равишда:
фақат реал вақт режимида яратилган фотосурат ва (ёки) видеотасвирдан фойдаланишни таъминлаши;
фотосурат ва (ёки) видеотасвирни алмаштириш ҳамда бузишдан, илгари яратилган фотосурат ва (ёки) видеотасвирдан фойдаланишдан ҳимояланган бўлиши;
идентификация қилишда мижозлар томонидан бошқа мижозларнинг фотосурати ва (ёки) видеотасвиридан фойдаланишга бўлган уринишларни аниқлаш имконини бериши мумкин.
2-боб. Мижозларни рақамли идентификация қилиш
7. Рақамли идентификация Ўзбекистон Республикасининг резидентлари ёки норезидентлари бўлган мижозларга нисбатан қўлланилади.
8. Мижозларни рақамли идентификация қилишда Марказий депозитарий томонидан қуйидаги усуллардан фойдаланилади:
мижоз рақамли идентификация қилиш ахборот тизимидан фойдаланмаган тақдирда, мижоз томонидан тақдим қилинган маълумотларга таянган ҳолда Марказий депозитарийнинг ходими томонидан мижозни текшириш ва идентификация қилиш;
мижоз рақамли идентификация қилиш ахборот тизимидан фойдаланган тақдирда, Марказий депозитарийнинг ахборот тизимлари томонидан реал вақт режимида инсон омилисиз мижозни текшириш ва идентификация қилиш.
9. Марказий депозитарий мазкур Тартибнинг 8-банди иккинчи хатбошисида қайд этилган усул бўйича резидент ва норезидент жисмоний шахс мижознинг шахсини текшириш ва идентификация қилишда:
шахсни тасдиқловчи ҳужжатнинг (биометрик паспорт ёки идентификация ID картаси ёхуд янги намунадаги ҳайдовчилик гувоҳномасининг) ички назорат қоидалари талабларига мувофиқ тегишли маълумотларга эга бўлган қисмлари фотосуратларини мижоздан қабул қилади;
мазкур Тартиб талабларига мувофиқ мижознинг фотосурати ва (ёки) видеотасвирини қабул қилади;
Марказий маълумотлар базасига сўров юбориш орқали ундаги маълумотлар билан солиштиради;
шахсни тасдиқловчи ҳужжатда жойлашган фотосуратни мазкур Тартибга мувофиқ қабул қилинган фотосурат ва (ёки) видеотасвир билан, шунингдек марказий маълумотлар базасида жойлаштирилган фотосурат билан (агар мавжуд бўлса) солиштиради;
мижоз билан боғланишда фойдаланиладиган мобил телефон рақамини айнан ушбу мижоз томонидан фойдаланилаётганлигини аниқлаш имконини берувчи усул (мобил телефонга боғланиш, SMS хабар юбориш) ёрдамида текширади;
ички назорат қоидаларига мувофиқ мижознинг эҳтимолий таваккалчилик даражасини аниқлаш бўйича таққослашни амалга оширади.
Марказий депозитарийнинг масъул ходими мижоз билан онлайн видеоконференцалоқа сеансини ўрнатиб, қабул қилинган ҳужжатларнинг айнан унга тегишлилигини текширади.
10. Марказий депозитарий мазкур Тартибнинг 8-банди иккинчи хатбошисида қайд этилган усул бўйича юридик шахс бўлган мижозни текшириш ва идентификация қилишда:
Тақдим этилган санага ҳақиқий бўлган ҳамда қуйидаги маълумотларни қайд этилган юридик шахснинг таъсис ҳужжатлари, давлат рўйхатидан ўтказилганлиги тўғрисидаги ҳужжатлар қабул қилинади:
а) номи (тўлиқ ва қисқа);
б) давлат рўйхатидан ўтган рақами, жойи ва санаси;
в) жойлашган жойи;
г) почта манзили;
д) солиқ тўловчининг идентификация рақами;
е) статистика кодлари.
Ўзбекистон Республикаси норезиденти бўлган юридик шахслар бўйича қўшимча равишда қуйидаги ҳужжатлар қабул қилинади:
а) норезидент юридик шахс ўз мамлакатида давлат рўйхатидан ўтказилганлиги тўғрисидаги давлат рўйхатидан ўтган рақами, жойи ва санаси кўрсатилган ҳужжат;
б) тақдим этилган санага ҳақиқий бўлган таъсис шартномаси, устави ҳамда уларга киритилган ўзгартириш ва қўшимчаларнинг консуллик ёки нотариус томонидан тасдиқланган нусхаси;
в) Ўзбекистон Республикасининг солиқ органлари томонидан берилган солиқ тўловчининг идентификация рақами;
г) норезидент юридик шахс рўйхатдан ўтган мамлакатнинг савдо реестридан кўчирма;
д) норезидент бўлган юридик шахс номидан ҳужжатларини имзолаш ваколатига эга шахснинг шахсини тасдиқловчи ҳужжати (паспорт ёки уни ўрнини босадиган ҳужжат);
мазкур Тартиб талабларига мувофиқ юридик шахс раҳбарининг фотосурати қабул қилинади;
юридик шахс юборган маълумотларни марказий маълумотлар базасига сўров юбориш орқали ундаги маълумотлар билан солиштирилади;
шахсни тасдиқловчи ҳужжатда жойлашган фотосуратни марказий маълумотлар базасида жойлаштирилган фотосурат билан солиштирилади;
ички назорат қоидаларига мувофиқ юридик шахснинг эҳтимолий таваккалчилик даражасини аниқлаш бўйича таққослаш амалга оширилади.
11. Марказий депозитарийнинг ахборот тизими мазкур Тартибнинг 8-банди учинчи хатбошисида қайд этилган усул бўйича Ўзбекистон Республикаси резиденти ва норезиденти бўлган жисмоний шахс мижознинг шахсини текшириш ва идентификация қилиш қуйидаги тартибда амалга оширилади:
Мижоз томонидан ўзининг электрон рақамли имзосидан фойдаланган ҳолда қуйидаги маълумотларни Марказий депозитарийнинг ахборот тизимига реал вақт режимида юкланади:
- жисмоний шахснинг шахсий идентификация рақами (ЖШШИР);
- рақамли фотосурати ёки видеотасвирдаги фотосурат;
Марказий депозитарийнинг ахборот тизими мижоздан реал вақт режимида олинган фотосуратни ёки видеотасвирдаги фотосуратни марказий маълумотлар базасидан олинган фотосурат билан (агар мавжуд бўлса) автоматлаштирилган ҳолда (инсон омилисиз) солиштиради;
Мижоз билан боғланишда фойдаланиладиган мобил телефон рақамини айнан ушбу мижоз томонидан фойдаланилаётганлигини аниқлаш имконини берувчи усул (мобил телефонга боғланиш, SMS хабар юбориш) ёрдамида текширади;
Қабул қилинган маълумотларни ички назорат қоидаларига мувофиқ Рўйхат билан автоматлаштирилган ҳолда (инсон омилисиз) таққосланади ҳамда жиноий фаолиятдан олинган даромадларни легаллаштириш ва терроризмни молиялаштиришга қарши курашиш тўғрисидаги қонунчилик
талабларини инобатга олган ҳолда мижозни эҳтимолий таваккалчилик даражаси аниқланади.
12. Марказий депозитарийнинг ахборот тизими мазкур Тартибнинг 8-банди учинчи хатбошисида қайд этилган усул бўйича Ўзбекистон Республикаси резиденти ва норезиденти бўлган юридик шахс мижозни текшириш ва идентификация қилиш қуйидаги тартибда амалга оширилади:
Мижоз томонидан ўзининг электрон рақамли имзосидан фойдаланган ҳолда қуйидаги маълумотларни Марказий депозитарийнинг ахборот тизимига реал вақт режимида юкланади:
- Ўзбекистон Республикасининг солиқ органлари томонидан берилган солиқ тўловчининг идентификация рақами (СТИР);
- мижоз раҳбарининг ЖШШИР ва рақамли фотосурати ёки видеотасвирдаги фотосурати.
Марказий депозитарийнинг ахборот тизими мижоздан реал вақт режимида олинган СТИР ва мижоз раҳбарининг фотосуратни ёки видеотасвирдаги фотосуратни марказий маълумотлар базасидан олинган фотосурат билан (агар мавжуд бўлса) автоматлаштирилган ҳолда (инсон омилисиз) солиштиради;
Мижоз билан боғланишда фойдаланиладиган мобил телефон рақамини айнан ушбу мижоз томонидан фойдаланилаётганлигини аниқлаш имконини берувчи усул (мобил телефонга боғланиш, SMS хабар юбориш) ёрдамида текширади;
Қабул қилинган маълумотларни ички назорат қоидаларига мувофиқ Рўйхат билан автоматлаштирилган ҳолда (инсон омилисиз) солиштиради ҳамда жиноий фаолиятдан олинган даромадларни легаллаштириш ва терроризмни молиялаштиришга қарши курашиш тўғрисидаги қонунчилик талабларини инобатга олган ҳолда текшириш имконини беради;
Мижозни эҳтимолий таваккалчилик даражаси аниқланади.
13. Мижозни рақамли идентификация қилишда:
фотосурат ва (ёки) видеотасвир рангли бўлиши;
видеотасвир товушли бўлиши;
фотосурат ва (ёки) видеотасвирда мижознинг ўзидан бошқа шахслар бўлишига йўл қўйилмаслиги;
мижознинг юзи қисман ёки тўлиқ яширилмаган бўлиши, мижознинг юзига соя тушмаслиги,
шунингдек мижоз юзни қоплайдиган кўзойнакда (шаффоф ойнали кўзойнакдан ташқари) бўлмаслиги;
фотосурат ва (ёки) видеотасвирда мижознинг юзи яққол кўриниши керак.
3-боб. Рақамли идентификацияни қўллаш
14. Рақамли идентификация қилиш мазкур Тартибда белгиланган талабларни инобатга олган ҳолда Ўзбекистон Республикасининг резидентлари ёки норезидентлари бўлган мижозлар учун ўз шахсий иштирокисиз депо ҳисобварақларини масофадан туриб очиш ва уларни бошқариш хизматларни кўрсатишда қўлланилиши мумкин.
15. Марказий депозитарий ўз мижозларини рақамли идентификация қилиш, аввал идентификация қилинган мижозлари юзасидан ҳар бир мижоз томонидан амалга ошириладиган операцияларга эҳтимолий таваккалчилик даражасидан келиб чиқиб, чекловлар ўрнатиши мумкин.
Бунда, Марказий депозитарий ўз мижозларини ички назорат қоидаларига мувофиқ текширишни ва скоринг таҳлилини амалга оширади.
16. Қуйидаги ҳолатларда мижозлар рақамли идентификациядан ўтмаган ҳисобланади:
мижоз ва (ёки) мижоз томонидан амалга оширилаётган операция ички назорат қоидаларига мувофиқ мижозни эҳтимолий таваккалчилик даражаси юқори деб топилган тақдирда;
мижоз томонидан тақдим этилган маълумотларнинг ҳақиқийлигига шубҳа туғилганда;
шахсни тасдиқловчи ҳужжатдаги фотосуратнинг ушбу Тартибга мувофиқ олинган фотосурат ва (ёки) видеотасвир ҳамда марказий маълумотлар базасига жойлаштирилган фотосурат билан (агар мавжуд бўлса) мослигига шубҳа мавжуд бўлганда;
мижоздан олинган маълумотлар марказий маълумотлар базасига жойлаштирилган маълумотларга мос келмаганда ёки мос келишини таққослашнинг иложи бўлмаганда;
фотосурат ва (ёки) видеотасвир ушбу Тартиб талабларига мос келмаганда;
жиноий фаолиятдан олинган даромадларни легаллаштириш, терроризмни молиялаштириш ва оммавий қирғин қуролини тарқатишни молиялаштириш бўйича шубҳалар мавжуд бўлганда.
17. Рақамли идентификация қилишда мижознинг барча идентификация маълумотлари Рўйхатга киритилган шахснинг маълумотлари билан қисман ёки тўлиқ мос келган тақдирда Марказий депозитарий ички назорат қоидаларида назарда тутилган чораларни кўради.
18. Мижозни рақамли идентификация қилиш натижаси бўйича мижоз анкетасини тўлдириш ва юритиш ички назорат қоидаларида белгиланган талаблар асосида амалга оширилади.
19. Мижозларни рақамли идентификация қилишни йўлга қўйган Марказий депозитарий ўн кун муддатда қимматли қоғозлар бозорини тартибга солиш бўйича ваколатли давлат органига қуйидаги маълумотларни ўз ичига олган ҳисоботни тақдим этади:
мижозларни рақамли идентификация қилиш тизимини йўлга қўйиш санаси;
мижозларни рақамли идентификация қилиш жараёнларининг тўлиқ тавсифи;
мижозларни рақамли идентификация қилиш орқали кўрсатиладиган хизматларнинг рўйхати.
20. Марказий депозитарий рақамли идентификация қилинган мижозлар бўйича ички назорат қоидаларида кўзда тутилган маълумотларга қўшимча равишда, мижозлардан олинган фотосуратлар ва (ёки) видеотасвирларни, мижоз шахсини текшириш ва идентификация қилиш амалга оширилган аниқ сана ва вақти қайд этилган ҳужжатларни, шунингдек марказий маълумотлар базасидан фойдаланган ҳолда маълумотларни таққослаш натижаларини мижозлар анкеталари билан биргаликда ички назорат қоидаларига мувофиқ беш йил давомида сақлайди.
21. Марказий депозитарийнинг ахборот тизимлари рақамли идентификация қилинган мижозлар ва уларнинг сони ҳақида тезкор маълумот олиш имкониятини таъминлаши лозим.
4-боб. Мижозларга депо ҳисобварақни масофадан туриб очиш ва депо ҳисобварақни очишни рад этиш тартиби.
22. Мижозларга депо ҳисобварақларини масофадан туриб очиш Марказий депозитарий ва мижоз ўртасида тузиладиган шартномага ва депо ҳисобварақ очиш тўғрисидаги аризага асосан амалга оширилади.
Агар мижознинг аризаси Марказий депозитарийнинг мижозни рақамли идентификация қилиш ахборот тизими орқали тақдим этилган бўлса, ариза мижознинг электрон рақамли имзоси билан тасдиқланади.
23. Мижоз билан шартнома тузиш мазкур Тартибнинг 8-бандида белгиланган мижозларни рақамли идентификация қилиш усуллардан келиб чиқиб қуйидагича амалга оширилади:
мижоз рақамли идентификация қилиш ахборот тизимидан фойдаланмаган тақдирда, Марказий депозитарийнинг мижоз билан электрон маълумотларни алмашиш воситалари орқали шартномани мижозга юбориш ва мижоз томонидан имзоланган шартномани қабул қилиш орқали расмийлаштирилади;
мижоз рақамли идентификация қилиш ахборот тизимидан фойдаланган тақдирда, Марказий депозитарийнинг ахборот тизимида мижозга таклиф этилган шартномани мижоз томонидан реал вақт режимида электрон рақамли имзо билан тасдиқлаш орқали расмийлаштирилади.
24. Мижозни депонентларнинг ягона базаси тизимида рўйхатдан ўтказиш ҳамда депонент кодини шакллантириш, марказий маълумотлар базасидан юкланган мижознинг анкета маълумотлари асосида амалга оширилади.
25. Мижозга депо ҳисобварақ очиш Марказий депозитарийнинг ахборот тизимида амалга оширилади.
26. Мижозга очилган депо ҳисобварақ тўғрисида электрон шаклда депо ҳисобварағидан кўчирма тақдим этилади.
27. Марказий депозитарий мижозга қуйидаги ҳолларда масофадан туриб депо ҳисобварақ очишни рад этади:
а) депо ҳисобварақни очиш учун тақдим этилган маълумотлар ушбу Тартиб талабларига мос келмаслиги;
б) мижознинг шахсини идентификация учун зарур маълумотлар тақдим этмаслиги;
г) жиноий фаолиятдан олинган даромадларни легаллаштиришга ва терроризмни молиялаштиришга қарши курашиш тўғрисидаги қонун ҳужжатлари талабларига мувофиқ маълумотларни текшириш натижалари бўйича мижоз билан иш муносабатларини ўрнатишнинг мақсадга мувофиқ эмаслиги ёки шахсни идентификациясини якунлашнинг мумкин эмаслиги.
5-боб. Якуний қоидалар
28. Марказий депозитарий мижозни рақамли идентификация қилиш натижасида олинган маълумотларга ўзгартиришлар киритишда ушбу Тартиб талабларига амал қилиши лозим.
29. Мазкур Тартиб ҳамда унга киритиладиган ўзгартириш ва қўшимчалар қимматли қоғозлар бозорини тартибга солиш бўйича ваколатли давлат органи билан келишилган кундан эътиборан кучга киради.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Заявление"),
        backgroundColor: Color.fromARGB(255, 62, 60, 150),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 60),
                  child: ReadMoreText(
                    content,
                    trimLines: 20,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Batafsil ko'rish ",
                    trimExpandedText: " Qisqartirish",
                    lessStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 209, 21, 21),
                    ),
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 209, 21, 21),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 20,),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(310, 50),
                        primary: Color.fromARGB(
                            249, 64, 89, 141), //background color of button
                        side: BorderSide(
                            width: 1,
                            color: Colors.grey), //border width and color
                        elevation: 5, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.all(0) //content padding inside button
                        ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        Sizetransition(Oferta()),
                      );
                    },
                    child: Text("Keyingisi", style: TextStyle(fontSize: 17)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
