import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () => Navigator.pushReplacementNamed(context, '/home'),
        ),
        title: Text('Astuces'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Astuce 1'),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Icon(Icons.attach_money),
                        Icon(Icons.attach_money),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.white70,
            elevation: 5.0,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Astuce 2'),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.white70,
            elevation: 5.0,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Astuce 2'),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                        Icon(Icons.vpn_lock),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Icon(Icons.attach_money),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.white70,
            elevation: 5.0,
          ),
        ],
      ),
    );
  }
}