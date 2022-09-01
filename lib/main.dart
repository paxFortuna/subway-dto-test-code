import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_debounce_mvvm/ui/subway_screen_view_model.dart';

import 'ui/subway_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => SubwayScreenViewModel(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SubWayScreen(),
    );
  }
}