import 'package:myapp/components/static_appbar.dart';
import 'package:flutter/material.dart';

import '../utils/screen_config.dart';
import '../utils/screen_config.dart';
import '../utils/screen_config.dart';
import '../utils/screen_config.dart';

class LevelDetail extends StatefulWidget {
  @override
  _LevelDetailState createState() => _LevelDetailState();
}

class _LevelDetailState extends State<LevelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(title: "Level Detail"),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text('20%', style: TextStyle(color: Color(0xff006265)),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:3, bottom:25),
              width: SizeConfig.blockSizeHorizontal*75,
              height: SizeConfig.blockSizeVertical*1.3,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.2,
                  valueColor: new AlwaysStoppedAnimation<Color>(Color(0xff006265)),
                  backgroundColor: Color(0xff80B2B2),
                ),
              ),
            ),
            FlatButton(onPressed: (){}, child: Container(
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: ImageIcon(
                        AssetImage('assets/menu-icon.png'),
                        color: Color(0xff006265),
                      ),
                    ),
                    Center(
                      child: Text('Kanji Detail', style: TextStyle(fontSize: 20, color: Color(0xff006265)),),
                    ),
                    Container(
                      child: IconButton(
                          splashRadius: 25,
                          icon: Icon(Icons.more_vert, color: Colors.white)
                      ),
                    ),
                  ],
                ),
              ),
              height: SizeConfig.blockSizeVertical*8.8,
              width: SizeConfig.blockSizeHorizontal*95,
              margin: EdgeInsets.all(5),
            )),
            FlatButton(onPressed: (){}, child: Container(
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: ImageIcon(
                        AssetImage('assets/flashcard.png'),
                        color: Color(0xff006265),
                        size: 34,
                      ),
                    ),
                    Center(
                      child: Text('Learning with flashcards', style: TextStyle(fontSize: 20, color: Color(0xff006265)),),
                    ),
                    Container(
                      child: IconButton(
                          splashRadius: 25,
                          icon: Icon(Icons.more_vert, color: Colors.white)
                      ),
                    ),
                  ],
                ),
              ),
              height: SizeConfig.blockSizeVertical*8.8,
              width: SizeConfig.blockSizeHorizontal*95,
              margin: EdgeInsets.all(5),
            )),
            FlatButton(onPressed: (){}, child: Container(
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: ImageIcon(
                        AssetImage('assets/practice-icon.png'),
                        color: Color(0xff006265),
                      ),
                    ),
                    Center(
                      child: Text('Practice Test', style: TextStyle(fontSize: 20, color: Color(0xff006265)),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ImageIcon(
                        AssetImage('assets/more-icon.png'),
                        color: Color(0xff006265),
                      ),
                    ),
                  ],
                ),
              ),
              height: SizeConfig.blockSizeVertical*8.8,
              width: SizeConfig.blockSizeHorizontal*95,
              margin: EdgeInsets.all(5),
            )),
            FlatButton(onPressed: (){}, child: Container(
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: ImageIcon(
                        AssetImage('assets/challenge-icon.png'),
                        color: Color(0xff006265),
                      ),
                    ),
                    Center(
                      child: Text('Challenge', style: TextStyle(fontSize: 20, color: Color(0xff006265)),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ImageIcon(
                        AssetImage('assets/more-icon.png'),
                        color: Color(0xff006265),
                      ),
                    ),
                  ],
                ),
              ),
              height: SizeConfig.blockSizeVertical*8.8,
              width: SizeConfig.blockSizeHorizontal*95,
              margin: EdgeInsets.all(5),
            ),)

          ],
        ),
      ),
    );
  }
}
