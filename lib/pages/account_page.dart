import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  _pageArch(){
    //TODO
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () => Navigator.pushReplacementNamed(context, '/home'),
        ),
        title: Text('Mon compte'),
      ),
      body: _pageArch(),
    );
  }
}