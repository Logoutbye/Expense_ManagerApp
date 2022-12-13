import 'package:flutter/material.dart';

class AddUncatagoryScreen extends StatefulWidget {
  const AddUncatagoryScreen({Key? key}) : super(key: key);

  @override
  State<AddUncatagoryScreen> createState() => _AddUncatagoryScreenState();
}

class _AddUncatagoryScreenState extends State<AddUncatagoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Personal Expense", textAlign: TextAlign.center),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //
          Padding(
            padding: EdgeInsets.only(right: 28),
            child: PopupMenuButton<int>(
              child: Icon(Icons.arrow_drop_down),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Personal Expense",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              color: Colors.black,
            ),
          ),
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
      body: Container(
        child: Text("this is for catagory add screen"),


      ),
    );
  }
}
