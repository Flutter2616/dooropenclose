import 'package:flutter/material.dart';

class Door extends StatefulWidget {
  const Door({Key? key}) : super(key: key);

  @override
  State<Door> createState() => _DoorState();
}

class _DoorState extends State<Door> {
  double i=35;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              text("Double tap open door"),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if(i>35)
                      {
                        i-=30;
                      }
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    if(i<70)
                      {
                        i+=30;
                      }
                  });
                },
                child: Container(
                  height: 300,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.grey, width: 20),
                        vertical: BorderSide(color: Colors.amber, width: i)),
                  ),
                ),
              ),
              text("On tap close door"),
            ],
          ),
        ),
      ),
    );
  }
  Widget text(String title) {
    return Text(
      "$title",
      style: TextStyle(
          fontWeight: FontWeight.w500, fontSize: 25, color: Colors.brown),
    );
  }
}
