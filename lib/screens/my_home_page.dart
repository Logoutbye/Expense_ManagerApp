import 'package:expense_manager/appbar_screen/auto_fill/auto_fill.dart';
import 'package:expense_manager/appbar_screen/recuring/recurring.dart';
import 'package:expense_manager/appbar_screen/set_default.dart';
import 'package:expense_manager/screens/category_screen/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

import '../calculator/calculator.dart';
import '../appbar_screen/account/account_transfer.dart';
import '../appbar_screen/currency_converter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Expense", textAlign: TextAlign.center),
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
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
          Padding(
            padding: EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                if (result == 2) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Install Barcode Scanner"),
                        content: Text(
                          "This application requires Barcode Scanner."
                          "Would you like to install it?",
                          style: TextStyle(fontSize: 15),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "NO",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 15),
                              )),
                          TextButton(
                              onPressed: () {
                                StoreRedirect.redirect(
                                    androidAppId: "com.srowen.bs.android.simple&hl=en&gl=US",
                                );
                                },
                              child: Text(
                                "YES",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 15),
                              ))
                        ],
                      );
                    },
                  );
                }
                else if (result == 3) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
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
                              decoration:
                                  InputDecoration(hintText: "Conversion Rate"),
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
                          TextButton(onPressed: () {
                            Navigator.pop(context);

                          }, child: Text("CANCEL")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("OK"))
                        ],
                      );
                    },
                  );
                }
                else if (result == 4) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CurrencyConverter()));
                }
                else if (result == 5) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AccountTransfer()));
                }
                else if (result == 6) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Recurring()));
                }
                else if (result == 7) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AutoFill()));
                }
                else if (result == 8) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SetDefault()));
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Barcode"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Mileage Conversion"),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text("Currency Converter"),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text("Account Transfer"),
                ),
                PopupMenuItem(
                  value: 6,
                  child: Text("Recurring"),
                ),
                PopupMenuItem(
                  value: 7,
                  child: Text("Auto Fill"),
                ),
                PopupMenuItem(
                  value: 8,
                  child: Text("Set Default"),
                ),
              ],
              // offset: Offset(0, 100),
              // color: Colors.grey,
              elevation: 1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                  decoration: InputDecoration(

                    suffixIcon: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Calculator()),

                        );
                      },
                      child: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Icon(Icons.monetization_on_rounded,color: Colors.white,)),
                    ),
                    hintText: "Enter Amount",
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: CircleAvatar(
                        backgroundColor: Colors.amberAccent,
                        child: Icon(Icons.handshake)),
                    hintText: "Payee",
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child:
                Row(
                  children: [
                    Text("Category",style: TextStyle(fontSize: 17,),),
                    const Spacer(flex: 2,),
                    IconButton(onPressed: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return SubStatus();
                          }
                      );
                    }, icon: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.category))),
                  ],
                ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child:
                  Row(
                    children: [
                      Text("Payment method",style: TextStyle(fontSize: 17,)),
                      Spacer(flex: 2,),
                      IconButton(onPressed: (){
                        showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return SubStatus();
                            }
                        );
                      },
                          icon: CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: Icon(Icons.add_card,color: Colors.white,))
                      ),
                    ],
                  ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child:
                  Row(
                    children: [
                      Text("Status",style: TextStyle(fontSize: 17,)),
                      InkWell(
                          onTap: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context){
                                  return SubStatus();
                                }
                            );
                          },
                          child: Text("cleared"))
                    ],
                  ),
                  )
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Print Cheque",style: TextStyle(fontSize: 17,)),
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.account_balance,color: Colors.white)),
                    hintText: "Ref/Cheque No",
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Icon(Icons.camera_alt,color: Colors.white,)),
                    hintText: "Description",
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
