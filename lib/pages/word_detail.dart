import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/static_appbar.dart';

class WordDetail extends StatefulWidget {
  @override
  _WordDetailState createState() => _WordDetailState();
}

class _WordDetailState extends State<WordDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(title:"Kanji Detail"),
    );
  }
}
