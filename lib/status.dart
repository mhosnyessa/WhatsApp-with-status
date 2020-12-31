import 'package:flutter/material.dart';

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
            backgroundImage: AssetImage(
              asset,
            ),
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
