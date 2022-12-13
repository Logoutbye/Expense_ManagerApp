import 'package:flutter/material.dart';

Future<void> _showMyDialogue() async {
  var context;
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Milleage Conversion"),
          content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(

                    decoration: InputDecoration(hintText: "Milleage"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Conversion Rate"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "From"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "To"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Note:mileage number saves in Ref No. Field")
                ],
              )),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text("CANCEL")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"))
          ],
        );

      });
}

