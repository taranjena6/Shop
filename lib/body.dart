import 'package:Shop/constant.dart';
import 'package:flutter/material.dart';

import 'Listview.dart';
import 'carousel.dart';
import 'categories.dart';
// import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Column(
        children: [
          Container(
            height: size.height * 0.1,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.1 - 15,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36))),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 10.0),
                            blurRadius: 9.0,
                            spreadRadius: 1.0,
                            color: Colors.black.withOpacity(0.23),
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: kPrimaryColor,
                          ),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          border: InputBorder.none,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          // Container(height: 60.0, child: Categoriesv()),
          SizedBox(
            height: 10.0,
          ),
          Categoriesv(),

          SizedBox(
            height: 20.0,
          ),

          Carouselv(),
          SizedBox(
            height: 10.0,
          ),
          ListViewCon(),

          // ListViewCon(),
          Container(
            height: 100,
          )
        ],
      ),
    ]);
  }
}
