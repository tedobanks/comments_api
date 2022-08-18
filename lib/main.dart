import 'package:comments_api/homepage.dart';
import 'package:comments_api/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider()..initialize(),
      child: MaterialApp(
        title: 'API Demo',
        home: Homepage(),
      ),
    );
  }
}
