import 'package:flutter/material.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(88), child: buildAppBar()),
      body: Body(),
    ));
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    flexibleSpace: Positioned(
      left: 10.0,
      right: 10.0,
      top: 10.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cake Shop',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 33.0,
                    color: Colors.white70),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'Find Your Favourite Cake!',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/fcupcake2.jpg'),
          )
        ],
      ),
    ),
  );
}
