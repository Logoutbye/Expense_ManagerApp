import 'package:flutter/material.dart';

class PayeeList extends StatefulWidget {
  const PayeeList({Key? key}) : super(key: key);

  @override
  State<PayeeList> createState() => _PayeeListState();
}

class _PayeeListState extends State<PayeeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PayeeList'),
      ),
    );
  }
}
