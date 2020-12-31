import 'package:flutter/material.dart';
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

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
            subIcon: Icon(
              Icons.call_received,
              color: Colors.red,
            ),
          ),
          CallTile(
            image: 'assets/ali_muhammed_ali.jpg',
            name: 'Ali Muhammed Ali',
            timeAgo: '32 minutes ago',
            iconTrailing: Icon(
              Icons.videocam,
              color: Colors.green,
            ),
            subIcon: Icon(
              Icons.call_made,
              color: Colors.green,
            ),
          ),
          CallTile(
            image: 'assets/boy.jpg',
            name: 'lil boy',
            timeAgo: '2 hours ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            subIcon: Icon(
              Icons.call_received,
              color: Colors.red,
            ),
          ),
          CallTile(
            image: 'assets/elif_shafak.jpg',
            name: 'Elif Shafak',
            timeAgo: 'November 27, 2:00 PM',
            iconTrailing: Icon(
              Icons.videocam,
              color: Colors.green,
            ),
            subIcon: Icon(
              Icons.call_made,
              color: Colors.green,
            ),
          ),
          CallTile(
            image: 'assets/boy.jpg',
            name: 'lil boy',
            timeAgo: '2 hours ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            subIcon: Icon(
              Icons.call_received,
              color: Colors.red,
            ),
          ),
          CallTile(
            image: 'assets/sundar_pichai.jpg',
            name: 'Sundar Pichai',
            timeAgo: 'November 12, 1:20 AM',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            subIcon: Icon(
              Icons.call_received,
              color: Colors.red,
            ),
          ),
          CallTile(
            image: 'assets/shokairi.jpg',
            name: 'A. Shokairi',
            timeAgo: '44 minutes ago',
            iconTrailing: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            subIcon: Icon(
              Icons.call_received,
              color: Colors.red,
            ),
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
        children: [subIcon, Text(timeAgo)],
      ),
    );
  }
}
