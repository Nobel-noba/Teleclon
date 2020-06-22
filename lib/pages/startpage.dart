import 'package:flutter/material.dart';

class startpage extends StatelessWidget {
  startpage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
//        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops:[0.2,0.5,0.85,0.9],
                  colors: [
                    Color(0xfffdfc47),
                    Color(0xff94fe41),
                    Color(0xff54fe41),
                    Color(0xff24fe41),
                  ]
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 55.0),
            child: Text(
              'Tele',
              style: TextStyle(
                fontFamily: 'Calisto MT',
                fontSize: 100,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(180.0, 149.0),
            child: Text(
              'lone',
              style: TextStyle(
                fontFamily: 'Calisto MT',
                fontSize: 100,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(74.0, 156.0),
            child:
                // Adobe XD layer: 'teleclone' (shape)
                Container(
              width: 128.0,
              height: 101.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/teleclone.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(100.0, 238.0),
            child:
                // Adobe XD layer: 'Untitled' (shape)
                Container(
              width: 600.0,
              height: 600.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/women.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.77), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 700.0),
            child: Text(
              'by NOBA',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 23,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
