import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teleclone/pages/drawer.dart';
import 'package:ussd/ussd.dart';

class Charge extends StatefulWidget {
  @override
  _ChargeState createState() => _ChargeState();
}

class _ChargeState extends State<Charge> {

  void initstate(){
    super.initState();
  }

  TextEditingController controller=TextEditingController();
  var cardNumber;

  _ChargeState({
  this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text('Recharge My Number'),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Text("Fill the hidden number bellow"),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: controller,
            ),
            RaisedButton(
              onPressed:(){
                cardNumber=controller.text;
                if(cardNumber.length<14){
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the user has entered by using the
                        // TextEditingController.
                        content: Text('The input value is less than the expected! Please check the number again'),
                      );
                    },
                  );
                }
                else if(cardNumber.length>14) {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the user has entered by using the
                        // TextEditingController.
                        content: Text('The input value is greater than the expected! Please check the number again'),
                      );
                    },
                  );
                }
                else{
                  return  Ussd.runUssd('*805*$cardNumber#');
                }
              },
              child: Text('Recharge'),
            ),
          ],
        ),
      ),
      drawer: SideBar(),
    );
  }
}
