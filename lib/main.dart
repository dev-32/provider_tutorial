import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sm/provider.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(context) => ProviderTest()),
        ],
          child: Home()),
    );
  }
}

