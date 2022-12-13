import 'package:flutter/material.dart';
class SetDefault extends StatefulWidget {
  const SetDefault({Key? key}) : super(key: key);

  @override
  State<SetDefault> createState() => _SetDefaultState();
}

class _SetDefaultState extends State<SetDefault> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool g = false;
  bool h = false;
  bool i = false;
  bool j = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Default"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Keyboard auto pops up"),
                    Spacer(),
                    Switch(value: a,
                      onChanged: (value) {
                        setState(() {
                          a = value;
                          print(a);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Times"),
                    Spacer(),
                    Switch(value: b,
                      onChanged: (value) {
                        setState(() {
                          b = value;
                          print(b);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Split"),
                    Spacer(),
                    Switch(value: c,
                      onChanged: (value) {
                        setState(() {
                          c = value;
                          print(c);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Payment Method"),
                    Spacer(),
                    Switch(value: d,
                      onChanged: (value) {
                        setState(() {
                          d = value;
                          print(d);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Status"),
                    Spacer(),
                    Switch(value: e,
                      onChanged: (value) {
                        setState(() {
                          e = value;
                          print(e);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Ref/Cheque No"),
                    Spacer(),
                    Switch(value: f,
                      onChanged: (value) {
                        setState(() {
                          f = value;
                          print(f);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("More"),
                    Spacer(),
                    Switch(value: g,
                      onChanged: (value) {
                        setState(() {
                          g = value;
                          print(g);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Payee/Payer Auto Fill"),
                    Spacer(),
                    Switch(value: h,
                      onChanged: (value) {
                        setState(() {
                          h = value;
                          print(h);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),
                Row(
                  children: [
                    Text("Ref/Cheque No Auto Fill"),
                    Spacer(),
                    Switch(value:i ,
                      onChanged: (value) {
                        setState(() {
                          i= value;
                          print(i);
                        });
                      },
                      activeTrackColor: Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                Divider(color: Colors.black45,),


              ],
            ),
          )
        ],
      )
    );
  }
}
