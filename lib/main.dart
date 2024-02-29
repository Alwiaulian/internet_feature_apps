import 'package:flutter/material.dart';
import 'package:internet_feature_apps/homePage.dart';
import 'package:internet_feature_apps/theme/theme_helper.dart';
import 'package:internet_feature_apps/transactionHistory.dart';

import 'theme/theme_helper.dart';

void main() {
  // runApp(Tes());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/transaction_history': (context) => TransactionHistoryPage(),
      },
    );
  }
}


