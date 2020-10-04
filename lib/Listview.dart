import 'package:flutter/material.dart';

class ListViewCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Today'\s Special",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text('See all..'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
