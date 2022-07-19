import 'package:flutter/material.dart';
import 'package:ecoswitch/data/dataLists.dart';

class MyHomePage extends StatefulWidget {
  final double height;
  final double width;
  const MyHomePage({Key key, this.height, this.width}): super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _items = 20;
  static double _earthSize = 150.0;

  List<Widget> cardList = [];
  Column _head;

  _header(){
    _head = Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 5.0,),
        GestureDetector(
          child: Icon(Icons.vpn_lock,size: _earthSize,),
          onTap: () => Navigator.pushReplacementNamed(context, '/acc'),
        ),
        SizedBox(height: 5.0,),
        Container(
          height: 20.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text('    Défis    '),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/7),
                elevation: 5.0,
                onPressed: () => Navigator.pushReplacementNamed(context, '/def'),
              ),
              RaisedButton(
                child: Text('Classement'),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/7),
                elevation: 5.0,
                onPressed: () => Navigator.pushReplacementNamed(context, '/ran'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0,),
      ],
    );
  }

  _createList(n){
    cardList.add(_head);
    List<Widget>_notifications = _notifs(tips, n);
    Card _notifCard;

    _notifCard = new Card(
      elevation: 5.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: _notifications.length,
            itemBuilder: (BuildContext context, int index) {
              return _notifications[index];
            },
            shrinkWrap: true,
          ),
        ],
      ),
    );

    cardList.add(_notifCard);

    List<Widget> _notifications2 = _notifs(news, n);

    _notifCard = new Card(
      elevation: 5.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: _notifications2.length,
            itemBuilder: (BuildContext context, int index) {
              return _notifications2[index];
            },
            shrinkWrap: true,
          ),
        ],
      ),
    );

    cardList.add(_notifCard);
  }

  _notifs(List list, int n){
    List<Widget> _notifications = new List();
    if(n > list.length)
      n = list.length;
    for(int i = 0; i < n; i++){
      _notifications.add(list[i]);
    }
    return _notifications;
  }

  _showDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0)),
          title: Text('Scanne le code QR'),
          content: Text(
              'Prends en photo le code QR de ton commerçant et valide ton achat !'),
          actions: <Widget>[
            new RaisedButton(
              onPressed: () => Navigator.of(context).pop(),
              padding: EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 12.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0)),
              color: Theme
                  .of(context)
                  .primaryColor,
              child: Text("C'est parti !"),
            ),
          ],
        );
      },
    );
  }

  _bottomNav(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: Icon(Icons.info, size: 30.0,),
              onTap: () => Navigator.pushReplacementNamed(context, '/inf'),
            ),
            GestureDetector(
              child: Icon(Icons.account_balance, size: 30.0,),
              onTap: () => Navigator.pushReplacementNamed(context, '/wal'),
            ),
            GestureDetector(
              child: Icon(Icons.camera, size: 30.0,),
              onTap: () => Navigator.pushReplacementNamed(context, '/sca'),
              onLongPress: () => _showDialog(),
            ),
            GestureDetector(
              child: Icon(Icons.message, size: 30.0,),
              onTap: () => Navigator.pushReplacementNamed(context, '/mes'),
            ),
            GestureDetector(
              child: Icon(Icons.room, size: 30.0,),
              onTap: () => Navigator.pushReplacementNamed(context, '/loc'),
            ),
          ],
        ),
        SizedBox(height: 10.0,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _header();
    _createList(_items);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.settings, size: MediaQuery.of(context).size.width/10,),
          onTap: () => Navigator.pushReplacementNamed(context, '/set'),
        ),
        title: Text('EcoSwitch'),
        elevation: 5.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 100.0 - 84.0,
              width: MediaQuery.of(context).size.width,
              child: Scrollbar(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(5.0),
                  itemCount: cardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return cardList[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: _bottomNav(),
      ),
    );
  }
}
