import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'src/screens/choose_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Globo Atualidades',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChooseContent(),
    );
  }
}
