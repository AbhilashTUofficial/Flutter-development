import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Column(
        children: [
          Container(
            height: 300,
            color: Colors.amberAccent,
            child: ListView.builder(
              scrollDirection:Axis.vertical,
              //physics: ClampingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 240,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(3, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
