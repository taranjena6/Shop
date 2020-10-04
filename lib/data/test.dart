import 'package:flutter/material.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApppp(),
    );
  }
}

class MyApppp extends StatefulWidget {
  @override
  _MyAppppState createState() => _MyAppppState();
}

class _MyAppppState extends State<MyApppp> {
  bool _active = false;
  int _favoriteCount = 41;
  int counter = 1;

  void _toggleFavorite() {
    setState(() {
      if (!_active) {
        _favoriteCount = _favoriteCount + 1;
        _active = !_active;
        print('True');
      } else {
        _favoriteCount = _favoriteCount - 1;
        _active = !_active;
        print('False');
      }
    });
  }

  // void _addPress() {
  //   setState(() {
  //     if (counter == 1) {
  //       counter += 1;
  //     } else {
  //       counter = counter;
  //     }
  //   });
  // }

  // void _minusAdd() {
  //   setState(() {
  //     if (counter > 1) {
  //       counter -= 1;
  //     } else {
  //       counter += 1;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    alignment: Alignment.centerRight,
                    icon:
                        (_active ? Icon(Icons.star) : Icon(Icons.star_border)),
                    color: Colors.red[500],
                    onPressed: _toggleFavorite,
                  ),
                ),
                SizedBox(
                  width: 18,
                  child: Container(
                    child: Text('$_favoriteCount'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 38,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.amberAccent),
              borderRadius: BorderRadius.circular(23.0),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          // _minusAdd();
                          setState(() {
                            if (counter > 1) {
                              counter -= 1;
                            }
                          });
                        },
                        color: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(23.0),
                                topLeft: Radius.circular(23.0))),
                        child: Icon(Icons.remove))),
                Expanded(
                    child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(23.0)),
                  child: Center(
                    child: Text(
                      '$counter',
                      style: TextStyle(fontSize: 19.0),
                    ),
                  ),
                )),
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          // _minusAdd();

                          setState(() {
                            counter += 1;
                          });
                        },
                        color: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(23.0),
                                topRight: Radius.circular(23.0))),
                        child: Icon(Icons.add)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
