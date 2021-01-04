import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'data/data.dart';

//chats page
Chats chatsForInstance = new Chats();

///
///
///
///this is the whole chats stateful widget
///
///
///
class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  int selectedItems = 0;

  int get howManyItemsSelected {
    return this.selectedItems;
  }

  set setSelectedItems(int number) {
    this.selectedItems = number;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _allListTile = List.generate(
        7,
        (i) => new ChatTile(
              asset: '${assetsForMessages[i]}',
              name: '${names[i]}',
              message: '${messagesRandomWA[i]}',
              time: '${timesOfMessages[i]}',
            ));
    return Container(
      child: ListView(
        children: _allListTile,
      ),
    );
  }
}

///
///
///
///
///
///chat tile for every chat :-
///here you can edit how each chat label looks like
///
///
///
///
///
class ChatTile extends StatefulWidget {
  const ChatTile({
    Key key,
    @required this.asset,
    this.name,
    this.message,
    this.sent,
    this.time,
    this.pin,
    this.index,
  }) : super(key: key);
  final String asset, name, message, time;
  final bool sent, pin;
  final int index;

  @override
  _ChatTileState createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  bool selected = false;

  // void _showDialog(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('this is a simple title'),
  //           content: Text('simple content'),
  //           actions: [
  //             FlatButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('hello there'),
  //             ),
  //           ],
  //         );
  //       });
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          selected: selected,
          focusColor: Colors.red,
          selectedTileColor: Colors.teal[600],
          onLongPress: () {
            setState(() {
              selected = true;
            });
          },
          onTap: () {
            setState(() {
              selected = selected ? false : true;
            });

            //_showDialog(context);
          },
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.time,
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Icon(this.widget.pin == true ? Icons.push_pin : Icons.circle,
                  color: this.widget.pin == true ? Colors.grey : Colors.green),
            ],
          ),
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(
                  this.widget.asset,
                ),
              ),
              SmallCircle(selected: selected),
            ],
          ),
          title: Text(
            this.widget.name,
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
                  this.widget.message,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 0.0,
          thickness: 0.5,
          endIndent: 15,
          indent: 85,
          color: Colors.grey[900],
        ),
      ],
    );
  }
}

///
///
///
///
///
///this is just for adding the small circle at buttom-right
///of a pic when selected for every single chat
///***not best implementation but idk 
///how to do it "the right way" so let's just carry on for now lol***
///
///****************************
///
///forget this It has nothing to do with the app logic
///****************************
///**************************** 
///
class SmallCircle extends StatefulWidget {
  final bool selected;
  const SmallCircle({this.selected});
  @override
  _SmallCircleState createState() => _SmallCircleState();
}

class _SmallCircleState extends State<SmallCircle> {
  @override
  Widget build(BuildContext context) {
    selectedk = widget.selected;
    findClass();
    return hello;
  }

  Widget hello;
  bool selectedk;

  void findClass() {
    if (selectedk == true) {
      hello = Positioned(
        // width: 10,
        // height: 10,
        child: Stack(
          children: [
            Icon(
              Icons.circle,
              color: Colors.black,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 21,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.check_rounded,
                  size: 18,
                ),
              ),
            )
          ],
        ),
        bottom: -0.9,
        right: 7,
      );
    } else {
      hello = Container(
        width: 20,
        height: 1,
        color: Colors.transparent,
      );
    }
  }
}
