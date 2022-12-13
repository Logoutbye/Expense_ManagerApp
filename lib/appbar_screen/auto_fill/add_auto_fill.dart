import 'package:flutter/material.dart';

class AddAutoFill extends StatefulWidget {
  const AddAutoFill({Key? key}) : super(key: key);

  @override
  State<AddAutoFill> createState() => _AddAutoFillState();
}

class _AddAutoFillState extends State<AddAutoFill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Auto Fill", textAlign: TextAlign.center),
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
                          "Expense Description is missing.",
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
      ),      body: Container(
        child: Text("this is for auto fill  add screen"),

      ),
    );
  }
}
