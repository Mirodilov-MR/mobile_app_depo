import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _surname;
  String? _father_name;
  String? _jshshr;
  String? _passport_number;

  String? _validateName(String? value) {
    if (value?.isEmpty ?? false) {
      return 'Name is required.';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value!)) {
      return 'Please enter only alphabetical characters.';
    }
    return null;
  }

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
          'Список услуг',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Color.fromARGB(181, 17, 94, 172),
      body: Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 100.0),

          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: UnderlineInputBorder(),
              filled: true,
              icon:Icon(Icons.perm_identity,color: Colors.white,),
              labelText: 'Name *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('name=$_name');
            },
            validator: _validateName,
          ),

          const SizedBox(height:20),

          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.perm_identity,color: Colors.white,),
              labelText: 'Surname *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('surname=$_surname');
            },
            validator: _validateName,
          ),

          const SizedBox(height: 20),

          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.perm_identity,color: Colors.white,),
              labelText: 'father_name *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('father_name=$_father_name');
            },
            validator: _validateName,
          ),

          const SizedBox(height: 20),
          // "Phone number" form.

          TextFormField(
            decoration: const InputDecoration(
              fillColor: Colors.white,
              iconColor: Colors.white,
              
              border: UnderlineInputBorder(),
              filled: true,
              
              icon: Icon(Icons.numbers_sharp,color: Colors.white,),
              hintText: '14 number',
              labelText: 'JSHSHR *',
              // prefixText: '+86',
            ),
            keyboardType: TextInputType.phone,
            onSaved: (String? value) {
              this._jshshr = value;
              print('JSHSHR=$_jshshr');
            },
            // TextInputFormatters are applied in sequence.
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          const SizedBox(height: 20),
          // "Email" form.
          TextFormField(
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.numbers,color: Colors.white,),
              hintText: 'Passport series',
              labelText: 'Passport series',
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String? value) {
              this._passport_number = value;
              print('Passport series=$_passport_number');
            },
          ),
          const SizedBox(height: 1.0),
          // "Life story" form.
          // TextFormField(
          //   decoration: const InputDecoration(
          //     border: OutlineInputBorder(),
          //     hintText: 'Tell us about yourself',
          //     helperText: 'Keep it short, this is just a demo.',
          //     labelText: 'Life story',
          //   ),
          //   maxLines: 3,
          // ),
          // const SizedBox(height: 24.0),
          // "Salary" form.
          // TextFormField(
          //   keyboardType: TextInputType.number,
          //   decoration: const InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Salary',
          //     prefixText: '\$',
          //     suffixText: 'USD',
          //     suffixStyle: TextStyle(color: Colors.green),
          //   ),
          // ),
          // const SizedBox(height: 24.0),
          // "Password" form.
          // PasswordField(
          //   fieldKey: _passwordFieldKey,
          //   helperText: 'No more than 8 characters.',
          //   labelText: 'Password *',
          //   onFieldSubmitted: (String value) {
          //     setState(() {
          //       this._password = value;
          //     });
          //   },
          // ),
          // const SizedBox(height: 24.0),
          // "Re-type password" form.
          // TextFormField(
          //   enabled: this._password != null && this._password!.isNotEmpty,
          //   decoration: const InputDecoration(
          //     border: UnderlineInputBorder(),
          //     filled: true,
          //     labelText: 'Re-type password',
          //   ),
          //   maxLength: 8,
          //   obscureText: true,
          // ),
        ],
      ),)
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(
              () {
                _obscureText = !_obscureText;
              },
            );
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
