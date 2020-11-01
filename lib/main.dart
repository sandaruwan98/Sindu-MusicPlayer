import 'package:flutter/material.dart';
import 'sinduHome.dart';

void main() => runApp(SinduApp());

class SinduApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SinduHome(),
    );
  }
}


