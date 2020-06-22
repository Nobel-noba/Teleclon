//side bar components


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class btn extends StatelessWidget {

  String btnValue;
  int index;
  List<String> names=<String>[
    'Charge Your balance',
    'Charge Others Balance',
    'Check Remaining Balance',
    'Send Callme Back Request',
    'Call Customer Service',
    'Package Services',
    'About',
  ];

  btn({String btnValue,int index}){
    this.btnValue=btnValue;
    this.index=index;
  }


  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth:double.infinity,
      child: RaisedButton(
        color: Colors.transparent,
        onPressed: (){
          switch(index){
            case 0:{
              Navigator.pushNamed(context, '/Charge');
              break;
            }
            case 1:{
              Navigator.pushNamed(context, '/ChargeForOthers');
              break;
            }
            case 2:{
              Navigator.pushNamed(context, '/CheckBalance');
              break;
            }case 3:{
              Navigator.pushNamed(context, '/CallMeBack');
              break;
            }
            case 4:{
              launch('tel:994');
              break;
            }case 5:{
              Navigator.pushNamed(context, '/Package');
              break;
            }
            case 6:{
              Navigator.pushNamed(context, '/info');
              break;
            }

          }
        },
        padding:const EdgeInsets.all(0.0),
        child: Text(names[index]),
        textColor: Colors.white,
      ),
    );;
  }
}


