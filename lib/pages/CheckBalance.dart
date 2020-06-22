import 'package:flutter/material.dart';
import 'package:teleclone/pages/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:ussd/ussd.dart';

class CheckBalance extends StatefulWidget {
  @override
  _CheckBalanceState createState() => _CheckBalanceState();
}

class _CheckBalanceState extends State<CheckBalance> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title:Text('Check Balance'),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text("click the button bellow"),
              RaisedButton(
                onPressed:()=>Ussd.runUssd('*804#'),
                child: Text('Check Balance'),
              ),
            ],
          ),
        ),
        drawer: SideBar(),
      );
    }
  }
