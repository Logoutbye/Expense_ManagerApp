import 'package:expense_manager/screens/expense/payee_list/item.dart';
import 'package:expense_manager/screens/expense/payee_list/payee_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_redirect/store_redirect.dart';

class PayeeList extends StatefulWidget {
  const PayeeList({Key? key}) : super(key: key);

  @override
  State<PayeeList> createState() => _PayeeListState();
}

class _PayeeListState extends State<PayeeList> {

  final payeeList = PayeeModel.payeeList();
  final textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payee List"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //

          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  StoreRedirect.redirect(
                    androidAppId: "com.google.android.contacts",
                  );
                },
                // onTap: (){
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) => PayeeContact()));
                // },
                // onTap: _launchUrl,
                // onTap: (){
                //   _openJioSavaan;
                // },
                child: Icon(
                  Icons.contacts_rounded,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.filter_list_outlined,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  final String? action = prefs.getString('action');
                  print("get value$action");


                },
                child: Icon(
                  Icons.edit,
                ),
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: [
                for(PayeeModel payeeModell in payeeList)
                Item(payeeModel: payeeModell, onDeleteItem: _deleteItem,)
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                    child:Container(
                  margin: EdgeInsets.only(bottom:20,right:20 ,left: 20,),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: "enter a item",
                      border: InputBorder.none
                    ),
                    onTap: (){
                    //  work from here to get valuelistner
                    },
                  ),
                )
                ),
                Container(
                  padding: EdgeInsets.only(bottom:20 ,right: 20),
                  child: ElevatedButton(
                    onPressed: () async {
                      _addItem(textEditingController.text);



                    },
                    child: Icon(Icons.add),

                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
  void _deleteItem (String id){
    setState(() {
      payeeList.removeWhere((item)=>item.id == id);

    });
  }
  Future<void> _addItem(String item) async {
    setState(() {
      payeeList.add(PayeeModel(id: DateTime.now().microsecondsSinceEpoch.
      toString(), text: item));
    });
    print("objectobjectobject");
    final prefs = await SharedPreferences.getInstance();
    final set = prefs.setString('action', textEditingController.text);
    print("objectobjectobject $set");
    textEditingController.clear();

  }
}
