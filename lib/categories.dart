import 'package:flutter/material.dart';

class Categoriesv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 40.0,
          width: 100.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(10.0),
            // boxShadow: [BoxShadow()]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/cupcake3.png',
                height: 25.0,
                width: 25.0,
              ),
              Text(
                'Cup Cakes',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 40.0,
          width: 100.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(10.0),
            // boxShadow: [BoxShadow()]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/cake1.png',
                height: 25.0,
                width: 25.0,
              ),
              Text(
                'Cakes',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 40.0,
          width: 100.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(10.0),
            // boxShadow: [BoxShadow()]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/donut4.png',
                height: 25.0,
                width: 25.0,
              ),
              Text(
                'Donuts',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
