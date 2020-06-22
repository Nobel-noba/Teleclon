import 'package:flutter/material.dart';
import 'package:teleclone/pages/drawer.dart';
import 'package:ussd/ussd.dart';

class ChargeForOthers extends StatefulWidget {
  @override
  _ChargeForOthersState createState() => _ChargeForOthersState();
}

class _ChargeForOthersState extends State<ChargeForOthers> {

  TextEditingController controller=TextEditingController();
  TextEditingController amountcontroller=TextEditingController();
  var cardNumber,amount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text('Recharge For Others'),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Text("Fill the Reciver Phone number bellow"),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: controller,
            ),
            Text("Enter the amount to transfer bellow"),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: amountcontroller,
            ),
            RaisedButton(
              onPressed:(){
                cardNumber=controller.text;
                amount=amountcontroller.text;
                if(cardNumber.length<10){
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
                else if(cardNumber.length>10) {
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
                  return  Ussd.runUssd('*806*$cardNumber*$amount#');
                }
              },
              child: Text('Recharge'),
            ),
          ],
        ),
      ),
      drawer: SideBar(),
    );;
  }
}
