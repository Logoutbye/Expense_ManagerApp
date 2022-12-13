import 'package:flutter/material.dart';
import 'add_auto_fill.dart';

class AutoFill extends StatefulWidget {
  const AutoFill({Key? key}) : super(key: key);

  @override
  State<AutoFill> createState() => _AutoFillState();
}

class _AutoFillState extends State<AutoFill> {
  bool i = false;
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
          // IconButton(onPressed:(){
          //     i = !i;
          //     print("sss$i");
          //
          //   },
          //       icon:  i ? Icon(Icons.ac_unit,):Icon(Icons.done_rounded)),

          // InkWell(
          //   onTap: () {
          //     i = !i;
          //   },
          //   child: i ? Icon(Icons.done_rounded,) : Icon(Icons.ac_unit)
          // ),
          Padding(
              padding: EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {
                    // i = !i;
                  },
                  child: i
                      ? Icon(Icons.done_rounded)
                      : Icon(Icons.filter_list_outlined))),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddAutoFill()));
                },
                child: Icon(
                  Icons.add,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                if (result == 1) {}
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Pre-Fill for Widget"),
                ),
              ],
              // offset: Offset(0, 100),
              // color: Colors.grey,
              elevation: 1,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("this is set AutoFill screen"),
            SizedBox(height: 10,),
      ],
        ),
      ),
    );
  }
}
