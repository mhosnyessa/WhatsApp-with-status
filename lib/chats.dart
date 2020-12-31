import 'package:flutter/material.dart';

//chats page
class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ChatTile(
            asset: 'assets/karolina.jpg',
            name: 'Karolina',
            message:
                'hello there blahello there blahello there blahello there blahello there bla',
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
              Icon(this.pin == true ? Icons.push_pin : Icons.circle,
                  color: this.pin == true ? Colors.grey : Colors.green),
            ],
          ),
          title: Text(
            name,
            overflow: TextOverflow.ellipsis,
          ),
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
              Expanded(
                child: Text(
                  message,
                  overflow: TextOverflow.ellipsis,
                ),
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
