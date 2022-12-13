import 'package:expense_manager/screens/first_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const FirstScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const FirstScreen(),
      //   '/FirstScreen': (context) => const FirstScreen(),
      //   '/MyHomePage': (context) => const MyHomePage(),
      //   '/BarCode': (context) => const BarCode(),
      //   '/MillegeConversion': (context) => const MillegeConversion(),
      //   '/CurrencyConverter': (context) => const CurrencyConverter(),
      //   '/AccountTransfer': (context) => const AccountTransfer(),
      //   '/Recurring': (context) => const Recurring(),
      //   '/AutoFill': (context) => const AutoFill(),
      //   '/SetDefault': (context) => const SetDefault(),
      // },
    );
  }
}
