import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
        children: <Widget>[
          Container(height:500, color: Colors.orange,),
          new Positioned(
            top: 120,
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: Container(
                      width: width/2.5,
                      height: width/2.5*2,
                      
                    ),
                  )
                ),Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: Container(
                      width: width/2.5,
                      height: width/2.5*2,
                      
                    ),
                  )
                ),Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: Container(
                      width: width/2.5,
                      height: width/2.5*2,
                      
                    ),
                  )
                ),Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: Container(
                      width: width/2.5,
                      height: width/2.5*2,
                      
                    ),
                  )
                ),Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: Container(
                      width: width/2.5,
                      height: width/2.5*2,
                      
                    ),
                  )
                ),Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: Container(
                      width: width/2.5,
                      height: width/2.5*2,
                      
                    ),
                  )
                )
              ],
            ),
          )
        ],
      
    );
  }
}