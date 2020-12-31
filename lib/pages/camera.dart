import 'package:flutter/material.dart';

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

