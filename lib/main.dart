import 'package:flutter/material.dart';
import 'package:ecoswitch/pages/homepage.dart';
import 'package:ecoswitch/pages/challenges_page.dart';
import 'package:ecoswitch/pages/tips_page.dart';
import 'package:ecoswitch/pages/settings_page.dart';
import 'package:ecoswitch/pages/wallet_page.dart';
import 'package:ecoswitch/pages/ranking_page.dart';
import 'package:ecoswitch/pages/info_page.dart';
import 'package:ecoswitch/pages/account_page.dart';
import 'package:ecoswitch/pages/scan_page.dart';
import 'package:ecoswitch/pages/messages_page.dart';
import 'package:ecoswitch/pages/map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoSwitch',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MyHomePage(),
        '/def': (BuildContext context) => Challenge(),
        '/ast': (BuildContext context) => Tips(),
        '/set': (BuildContext context) => Settings(),
        '/wal': (BuildContext context) => Wallet(),
        '/ran': (BuildContext context) => Ranking(),
        '/inf': (BuildContext context) => Information(),
        '/acc': (BuildContext context) => Account(),
        '/sca': (BuildContext context) => Scanner(),
        '/mes': (BuildContext context) => Messages(),
        '/loc': (BuildContext context) => Map(),
      },
    );
  }
}
