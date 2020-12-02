 import 'package:myapp/components/static_appbar.dart';
import 'package:flutter/material.dart';

class WordSelect extends StatefulWidget {
  @override
  _WordSelectState createState() => _WordSelectState();
}

class _WordSelectState extends State<WordSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(title: "Word Select"),
      body: Container(),
    );
  }
}
