import 'package:flutter/material.dart';
import 'pages/chats.dart';
import 'pages/status.dart';
import 'pages/calls.dart';
import 'pages/camera.dart';

//builduing the whole app under a widget called default tab controller /*camel case of course*/
class WholeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
            SizedBox(width: 5),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
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


//class for a default tab /*actually just the name of the tab*/
class TabBark extends StatelessWidget {
  final String title;
  TabBark({this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      //icon: Icon(iconj),
      text: title,
    );
  }
}
