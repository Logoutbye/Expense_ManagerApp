import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';


class SubStatus extends StatefulWidget {
  const SubStatus({Key? key}) : super(key: key);

  @override
  State<SubStatus> createState() => _SubStatusState();
}

class _SubStatusState extends State<SubStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Category:Subcategory"),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {
                  },
                  child: Icon(Icons.search))),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.add,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                // if (result == 1) {
                //   showDialog(
                //       context: context,
                //       builder: (BuildContext context) {
                //     return AlertDialog(
                //       title: Text("Delete Confirmation"),
                //       content: Text(
                //         "Do you want to delete all items",
                //         style: TextStyle(fontSize: 15),
                //       ),
                //       actions: [
                //         TextButton(
                //             onPressed: () {
                //               Navigator.pop(context);
                //             },
                //             child: Text(
                //               "Cancel",
                //               style: TextStyle(
                //                   color: Colors.teal, fontSize: 15),
                //             )),
                //         TextButton(
                //             onPressed: () {
                //               delete(data[index]);
                //             },
                //             child: Text(
                //               "OK",
                //               style: TextStyle(
                //                   color: Colors.teal, fontSize: 15),
                //             ))
                //       ],
                //     );
                //   });
                //
                // },
                if (result == 2) {
                  Padding(
                    padding: EdgeInsets.all(8),
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
                  );

                }

              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Delete All"),
                ),  PopupMenuItem(
                  value: 2,
                  child: Text("Edit"),

                ),

              ],
              // offset: Offset(0, 100),
              // color: Colors.grey,
              elevation: 1,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: (){

                  },
                  title:Text("Food:Groceries",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("F",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.blue,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("AutoMobile",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("A",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.cyanAccent,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Entertainment",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("E",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.pink,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Family",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("F",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Food",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("F",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.amber,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Health Care",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("H",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Home Office",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("H",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.red,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Household",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("H",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.green,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Insurance",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("I",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.pinkAccent,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Loans",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("L",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Others",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("O",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Personal",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("P",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.grey,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Tax",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("T",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.lime,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Travel",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("T",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.black12,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Utilities",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("U",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.black87,
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(title: Text("Vacation",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    child: Text("V",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.cyan,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
