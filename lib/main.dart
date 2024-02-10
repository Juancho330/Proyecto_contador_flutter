import 'package:flutter/material.dart';
import 'package:flutter_holamundo/presentacion/screens/Counter/counter_funtions_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrange,
      ),
      home: const CounterFunctionsScreent()
    );
  }

}

