import 'currency_converter_material_page.dart';
import 'currency_converter_cupertino_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*without class part 1
void main() {
  runApp(Text(
    'hello, world!!!'    textDirection: TextDirection.rtl,
  ));
}*/

//with class
void main() {
  runApp(const MyCupertinoApp());
  //const is used to declared that constructor is compile time constant.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//stateless widget is an abstract class.it has to override the function.
//here,key is a class that helps to flutter to idnetify and derrenciate between widgets.a specific key for a specific widgets.

//part2
//-------------------------------------------------------------------
/*  @override
//fuction return the widgets.
  Widget build(BuildContext context) {
    return const Text(
      'hello, world!!!',
      textDirection: TextDirection.ltr,
    );
  }*/
  //----------------------------------------------------------------

//part3
//currency_converter
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
