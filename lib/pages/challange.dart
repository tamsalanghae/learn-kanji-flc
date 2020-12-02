import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/static_appbar.dart';
import 'package:myapp/utils/screen_config.dart';

class Challange extends StatefulWidget {
  @override
  _ChallangeState createState() => _ChallangeState();
}

class KeyWord {
  String text;
  String meaning;
  bool isTrue;
  bool isChoose;
  KeyWord({this.text,this.meaning,}){
    this.isTrue=false;
    this.isChoose=false;
  }
}

class _ChallangeState extends State<Challange> {
  bool start = false;
  List<String> _listQiz=[
    "Sun/Day",
    "Nine",
    "Moon",
    "Four",
    "Six",
    "Five",
    "Book",
    "Blue",
    "Three",
    "Dog",
    "Eight",
    "White",
    "One",
    "Fish",
    "Seven",
    "Two",
  ];
  List<KeyWord> _listWord = [
    KeyWord(text: "日", meaning: "Sun/Day"),
    KeyWord(text: "月", meaning: "Moon"),
    KeyWord(text: "本", meaning: "Book"),
    KeyWord(text: "一", meaning: "One"),
    KeyWord(text: "二", meaning: "Two"),
    KeyWord(text: "三", meaning: "Three"),
    KeyWord(text: "四", meaning: "Four"),
    KeyWord(text: "五", meaning: "Five"),
    KeyWord(text: "六", meaning: "Six"),
    KeyWord(text: "七", meaning: "Seven"),
    KeyWord(text: "八", meaning: "Eight"),
    KeyWord(text: "九", meaning: "Nine"),
    KeyWord(text: "犬", meaning: "Dog"),
    KeyWord(text: "魚", meaning: "Fish"),
    KeyWord(text: "青", meaning: "Blue"),
    KeyWord(text: "白", meaning: "White"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF006465),
      appBar: staticAppbar(title: "Challange"),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: SizeConfig.safeBlockVertical * 1, child: _progress()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay),
        onPressed: () => setState(() => start = !start),
      ),
    ));
  }

  Widget _progress() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: Container(
            height: SizeConfig.safeBlockHorizontal * 4.8,
            width: SizeConfig.safeBlockHorizontal * 80,
            child: Stack(alignment: Alignment.center, children: [
              Container(
                width: SizeConfig.blockSizeHorizontal * 80,
                color: Color(0xFF006465),
              ),
              AnimatedPositioned(
                left: start ? -SizeConfig.blockSizeHorizontal * 80 : 0,
                curve: Curves.easeIn,
                onEnd: () {
                  setState(() => start = !start);
                },
                duration: Duration(seconds: start ? 3 : 0),
                child: Container(
                  height: SizeConfig.safeBlockHorizontal * 6,
                  width: SizeConfig.safeBlockHorizontal * 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFF006465)),
                      borderRadius: BorderRadius.circular(90)),
                ),
              ),
            ])));
  }
}
