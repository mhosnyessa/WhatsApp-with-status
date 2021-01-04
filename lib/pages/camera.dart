import 'package:flutter/material.dart';

//camera page
class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[900],
      child: Center(
        child: Stack(
          children: [
            Text(
              'Sorry, camera is not working, \n try again next time',
              style: TextStyle(color: Colors.white),
            ),
            Positioned(
              top: -30,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
