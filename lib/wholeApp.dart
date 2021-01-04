import 'package:flutter/material.dart';
import 'pages/chats.dart'; //chats page
import 'pages/status.dart'; //status page
import 'pages/calls.dart'; //calls page
import 'pages/camera.dart'; //camera page

//builduing the whole app under a widget called default tab controller /*camel case of course*/
///
///
///
///
///
///this one down here is just for making a *signature*
///per-se just for a purpose that idk.
///they said that this way I can write a clean and well-written
typedef void FunWetherSelectedOfNot(int i);

///
///
///
class WholeApp extends StatefulWidget {
  @override
  _WholeAppState createState() => _WholeAppState();
}

class _WholeAppState extends State<WholeApp> {
  bool selectionMode = false;

  void updateState(int input) {
    setState(() {
      selectionMode = input > 0 ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: !selectionMode
              ? [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Icon(Icons.more_vert),
                  SizedBox(width: 5),
                ]
              : [
                  
                  SizedBox(width: 5),
                ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              TabBark(
                title: 'CHATS',
              ),
              TabBark(
                title: 'STATUS',
              ),
              TabBark(
                title: 'CALLS',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Camera(),
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        ),
      ),
    );
  }
}

///
///
///
///class for a default tab /*actually just the name of the tab*/
///
///
///

class TabBark extends StatelessWidget {
  final String title;

  TabBark({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      //icon: Icon(iconj),
      text: title,
    );
  }
}
