import 'package:flutter/material.dart';

void main() {
  runApp(MyApv());
}

class MyApv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  Widget _myFunction() {
    List<Widget> myList = [];
    cons.forEach((CustomWidget myobj) {
      myList.add(Column(
        children: [
          Container(
            height: 100.0,
            width: 200.0,
            color: Colors.amberAccent,
            child: Center(
              child: Text(myobj.mytext),
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ));
    });
    return Column(
      children: myList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Try App')), body: _myFunction());
  }
}

class CustomWidget {
  final String mytext;
  CustomWidget({this.mytext, Color color});
}

final _con1 = CustomWidget(mytext: "mytext1", color: Colors.red);
final _con2 = CustomWidget(mytext: "mytext2", color: Colors.yellow);
final _con3 = CustomWidget(mytext: "mytext3", color: Colors.orange);
final _con4 = CustomWidget(mytext: "mytext4", color: Colors.blue);
final _con5 = CustomWidget(mytext: "mytext5", color: Colors.amberAccent);

List<CustomWidget> cons = [_con1, _con2, _con3, _con4, _con5];
