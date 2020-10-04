import 'package:flutter/material.dart';

class VlistCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.grey[50]),
        height: 150.0,
        width: 330,
        child: Row(
          children: [
            Container(
              width: 140.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/cake6.jpeg',
                  height: 190.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vanilla Donut',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Snacks',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15.0,
                                    color: Colors.grey[400]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text('450g'),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20.0,
                                color: Colors.yellow[600],
                              ),
                              Icon(
                                Icons.star,
                                size: 20.0,
                                color: Colors.yellow[600],
                              ),
                              Icon(
                                Icons.star,
                                size: 20.0,
                                color: Colors.yellow[600],
                              ),
                              Icon(
                                Icons.star_half,
                                size: 20.0,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              Text(
                                '₹550',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
