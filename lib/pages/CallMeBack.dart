import 'package:flutter/material.dart';
import 'package:teleclone/pages/drawer.dart';
import 'package:ussd/ussd.dart';

class CallMeBack extends StatefulWidget {
  @override
  _CallMeBackState createState() => _CallMeBackState();
}

class _CallMeBackState extends State<CallMeBack> {

//  ContactPicker contactPicker=ContactPicker();
  TextEditingController controller=TextEditingController();
  String phoneNumber="";
//  Contact _contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text('Call me back service'),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Text("Fill the hidden number bellow"),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 9,
              controller: controller,
            ),
//            MaterialButton(
//              onPressed: () async{
//                Contact contact = await contactPicker.selectContact();
//                setState(() {
//                  _contact = contact;
//                  phoneNumber=_contact.phoneNumber.toString().substring(4,13);
//                });
//              },
//              child:Text('Pick Contact'),
//            ),
            RaisedButton(
              onPressed:(){
                if(phoneNumber.length==0){
                  phoneNumber=controller.text;
                }
                  if(phoneNumber.length<9){
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
                  else if(phoneNumber.length>9) {
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
                    return  Ussd.runUssd('*807*$phoneNumber#');
                  }
              },
              child: Text('Send Callme Back Request'),
            ),
          ],
        ),
      ),
      drawer: SideBar(),
    );;
  }
}
