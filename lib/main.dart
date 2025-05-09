import 'package:flutter/material.dart';
import 'home_page.dart';
import 'add_card.dart';
import 'card_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/add-card': (context) => AddCardPage(),
        '/card-view': (context) => CardViewPage(),
      },
    );
  }
}
