import 'package:flutter/material.dart';


class agreee extends StatefulWidget {
  const agreee({Key? key}) : super(key: key);

  @override
  _agreeeState createState() => _agreeeState();
}

class _agreeeState extends State<agreee> {
  bool agree = false;

  void _doSomething() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Material(
              child: Checkbox(
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  });
                },
              ),
            ),
            const Text(
              'I have read and accept terms and conditions',
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        ElevatedButton(
            onPressed: agree ? _doSomething : null,
            child: const Text('Continue'))
      ]),
    );
  }
}