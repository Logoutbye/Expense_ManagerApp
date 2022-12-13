
import 'package:flutter/material.dart';
class AccountTransfer1 extends StatefulWidget {
  const AccountTransfer1({Key? key}) : super(key: key);

  @override
  State<AccountTransfer1> createState() => _AccountTransfer1State();
}

class _AccountTransfer1State extends State<AccountTransfer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Account Transfer", textAlign: TextAlign.center),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Alert"),
                        content: Text(
                          "Please enter a valid number in Amount field!",
                          style: TextStyle(fontSize: 15),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ))
                        ],
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.check_outlined,
                ),
              )),

        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("this is set AccountTransfer screen"),
          ],
        ),
      ),
    );
  }

}

