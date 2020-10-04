import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(8.0)),
        height: 270.0,
        width: 170.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 7.0, right: 7.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "245 Calories",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.grey[400],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Image(
              image: AssetImage('assets/images/fcupcake4.jpg'),
              fit: BoxFit.fitHeight,
              height: 150.0,
              width: 170.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ChocoCake',
                    style: TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Full of Chocos',
                    style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Rs-29.99",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
