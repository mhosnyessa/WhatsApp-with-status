import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KHome(),
      theme: ThemeData(primaryColor: Colors.teal[800]),
    );
  }
}

//builduing the whole app under a widget called default tab controller /*camel case of course*/
class KHome extends StatelessWidget {
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
        body: TabBarView(
          children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}

//camera page
class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[900],
      child: Center(
        child: Text(
          'Sorry, camera is not working, \n try again next time',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

//status page
class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/status.jpeg'),
            ),
            title: Text('My Status'),
            subtitle: Text('tap to add status update'),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            color: Colors.grey[400],
            height: 2,
            thickness: 2,
          ),
          Container(
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.blue,
            //   ),
            //   borderRadius: BorderRadiusDirectional.circular(10.0),
            // ),
            // //decoration: Decoration,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            height: 27,
            width: 9999,
            color: Colors.grey[200],
            child: Text(
              'Viewed updates',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.green[700],
              ),
            ),
          ),
          StatusTile(
            asset: 'assets/status1.jpeg',
            name: 'karolina',
            time: 'today, 2:21 pm',
          ),
          StatusTile(
            asset: 'assets/status2.jpeg',
            name: 'A. Shokairi',
            time: 'yesterday',
          ),
          StatusTile(
            asset: 'assets/status3.jpeg',
            name: 'Stefan Mischock',
            time: 'today, 2:21 pm',
          ),
          StatusTile(
            asset: 'assets/status4.jpeg',
            name: 'Elif Shafak',
            time: 'today, 7:55 am',
          ),
          // Container(
          //   child: ListView(
          //     children: [
          //       ListTile(
          //         title: Text('Stefanie'),
          //         subtitle: Text('today, 2:21'),
          //         leading: CircleAvatar(
          //           backgroundColor: Colors.blue,
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ], //children
      ),
    );
  }
}

//tile for each status
class StatusTile extends StatelessWidget {
  final String asset, name, time;
  const StatusTile({Key key, this.asset, this.name, this.time})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 4,
        ),
        ListTile(
          title: Text(name),
          subtitle: Text(time),
          leading: CircleAvatar(
            backgroundImage: AssetImage(asset),
            radius: 25,
          ),
        ),
        Divider(
          indent: 75,
          endIndent: 10,
        ),
      ],
    );
  }
}

//chats page
class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ChatTile(
            asset: 'assets/karolina.jpg',
            name: 'karolina',
            message: 'hello there',
            time: 'yesterday',
            pin: true,
          ),
          ChatTile(
            asset: 'assets/shokairi.jpg',
            name: 'A. Shokairi',
            message: 'ok no prob at all',
            time: '10:30',
            pin: true,
          ),
          ChatTile(
            asset: 'assets/stef.jpg',
            name: 'Stefan Mischock',
            message: 'I hate RUBY don\'t learn it',
            time: '5:37',
            pin: true,
          ),
          ChatTile(
            asset: 'assets/ali_muhammed_ali.jpg',
            name: 'Ali M. Ali',
            message: 'Yes, It\'s named product...',
            time: '5:21',
          ),
          ChatTile(
            asset: 'assets/elif_shafak.jpg',
            name: 'Elif Shafak',
            message: 'my book -40 rules of lo...',
            time: '3:20',
          ),
          ChatTile(
            asset: 'assets/sundar_pichai.jpg',
            name: 'Sundar Pichai',
            message: 'google is gonna make it...',
            time: '3:20',
          ),
          ChatTile(
            asset: 'assets/stefanie.jpg',
            name: 'Stefanie from English coach',
            message: 'these tips are importan...',
            time: '3:20',
          ),
          ChatTile(
            asset: 'assets/boy.jpg',
            name: 'my boy',
            message: 'when will be the tut...',
            time: '5:00',
          ),
        ],
      ),
    );
  }
}

//chat tile for every chat :- here you can edit how each chat label looks like
class ChatTile extends StatelessWidget {
  const ChatTile(
      {Key key,
      @required this.asset,
      this.name,
      this.message,
      this.sent,
      this.time,
      this.pin})
      : super(key: key);
  final String asset, name, message, time;
  final bool sent, pin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage(asset),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Icon(this.pin == true? Icons.push_pin : Icons.circle, color: this.pin == true? Colors.grey: Colors.green),
            ],
          ),
          title: Text(name),
          subtitle: Row(
            children: [
              Icon(
                Icons.check,
                size: 20,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                message,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        Divider(
          endIndent: 15,
          indent: 85,
          color: Colors.grey[900],
        ),
      ],
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

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CallTile(
            image: 'assets/shokairi.jpg',
            name: 'A. Shokairi',
            timeAgo: '44 minutes ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_received, color: Colors.red,),
          ),
          CallTile(
            image: 'assets/ali_muhammed_ali.jpg',
            name: 'Ali Muhammed Ali',
            timeAgo: '32 minutes ago',
            iconTrailing: Icon(
              Icons.videocam,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_made, color: Colors.green,),
          ),
          CallTile(
            image: 'assets/boy.jpg',
            name: 'lil boy',
            timeAgo: '2 hours ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_received, color: Colors.red,),
          ),
          CallTile(
            image: 'assets/elif_shafak.jpg',
            name: 'Elif Shafak',
            timeAgo: 'November 27, 2:00 PM',
            iconTrailing: Icon(
              Icons.videocam,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_made, color: Colors.green,),
          ),
          CallTile(
            image: 'assets/boy.jpg',
            name: 'lil boy',
            timeAgo: '2 hours ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_received, color: Colors.red,),
          ),
          CallTile(
            image: 'assets/sundar_pichai.jpg',
            name: 'Sundar Pichai',
            timeAgo: 'November 12, 1:20 AM',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_received, color: Colors.red,),
          ),
          CallTile(
            image: 'assets/shokairi.jpg',
            name: 'A. Shokairi',
            timeAgo: '44 minutes ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,

            ),
            subIcon: Icon(Icons.call_received, color: Colors.red,),
          ),

        ],
      ),
    );
  }
}

class CallTile extends StatelessWidget {
  const CallTile(
      {Key key,
      this.image,
      this.name,
      this.timeAgo,
      this.iconTrailing,
      this.color,
      this.subIcon})
      : super(key: key);
  final String image, name, timeAgo, color;
  final Widget iconTrailing, subIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      trailing: iconTrailing,
      title: Text(name),
      subtitle: Row(
        children: [
          subIcon,
          Text(timeAgo)
        ],
      ),
    );
  }
}
