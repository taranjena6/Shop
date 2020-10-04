import 'package:Shop/constant.dart';
import 'package:flutter/material.dart';

import 'Vlistview.dart';

void main() {
  runApp(CupCake());
}

class CupCake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "myapp",
      home: Cupcakes(),
    );
  }
}

class Cupcakes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            actions: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
            ],
            leading: Icon(Icons.arrow_back_ios),
            backgroundColor: kPrimaryColor,
            title: Center(
                child: Text(
              "Cup Cakes",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                child: Text(
                  "Popular CupCakes",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              Container(
                //color: Colors.red,
                height: 130.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [VlistCon(), VlistCon(), VlistCon()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                child: Text("CupCakes For You",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
              ),
              VlistCon(),
              SizedBox(
                height: 10.0,
              ),
              VlistCon(),
              SizedBox(
                height: 10.0,
              ),
              VlistCon()
            ],
          ),
        ]),
      ),
    );
  }
}
