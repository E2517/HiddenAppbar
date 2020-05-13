import 'package:flutter/material.dart';
import 'package:appbarhidden/views/appbar_hidden_sliver_views.dart';
import 'package:appbarhidden/views/appbar_views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appbarhidden = AppBarHidden();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: MyPersonalAppBar(),
        body: appbarhidden.appBarHidden(),
      ),
    );
  }
}
