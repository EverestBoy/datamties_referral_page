import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepage/LogoPaint.dart';

import 'dart:math';

void main() => runApp(MyApp());
enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}



class MyPainter extends CustomPainter{
  String color;
  MyPainter(String color){
    this.color = color;
  }

  // double width;
  // MyPainter(double widht){
  //   this.width = width;
  // }

  @override
  void paint(Canvas canvas, Size size){

    // final center = Offset(width/2, width/2);

    Color lightColor, darkColor;

    if(color == 'g'){
      lightColor = lightGreen;
      darkColor = darkGreen;
    } else if(color == 'b'){
      lightColor = lightBlue;
      darkColor = darkBlue;
    } else if(color == 'r'){
      lightColor = lightRed;
      darkColor = darkRed;
    } else if(color == 'p'){
      lightColor = lightPurple;
      darkColor = darkPurple;
    } else {
      lightColor = lightRed;
      darkColor = darkOrange;
    } 



    final paint = Paint()
    ..color = lightColor
    ..style = PaintingStyle.fill  ;
    final paintRed = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.fill  ;

    // canvas.drawCircle(center, radius, paint);

   
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, size.width, size.height) , Radius.circular(10))
      , paint);
    // canvas.drawCircle(Offset(size.width, .0), 40, paintRed);

    Paint customPaint(){
    Paint paint = Paint();
    paint.color = darkColor;
    
    paint.isAntiAlias = true;
    // paint.strokeWidth = 10;
    return paint;
  }

    canvas.drawArc(Rect.fromCircle(center:Offset(size.width, size.height/2),radius: size.height/2), 1.57, 3.15, false, customPaint());
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Color lightRed = Color(0xffffebe5);
Color darkRed = Color(0xffde350b);
Color lightGreen = Color(0xffe2ffee);
Color darkGreen = Color(0xff00875a);
Color lightBlue = Color(0xffdeebff);
Color darkBlue = Color(0xff003399);
Color darkOrange = Color(0xffe37528);
Color lightOrange = Color(0xffdec5b4);
Color darkPurple = Color(0xff7b1fa2);
Color lightPurple = Color(0xffe1bee7);

class _MyHomePageState extends State<MyHomePage> {

  

  
  @override
  Widget build(BuildContext context) {

    TextStyle titleStyle = new TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
    TextStyle descStyle = new TextStyle(fontSize: 14, fontWeight: FontWeight.w300);

    var widht = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(title: Text("dfklj"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 32,),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(16,0,0,8),
          //   child: Text("Referrals"),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: widht/2-24,
                height: widht/3,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                      width: widht/2,
                      height: widht/3,  
                      child: Card(
                        elevation: 10,
                      ),
                    ),
                    Container(
                      width: widht/2-24,
                      height: widht/3,  
                      child: CustomPaint(
                        painter: MyPainter('g'),
                      ),
                    ),

                    Container(
                      width: widht/2-24,
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            width: widht/2-24-60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Settled", style: titleStyle.copyWith(color: darkGreen),),
                                Text("All your settled referrals.", style: descStyle.copyWith(color: darkGreen),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(widht/12-20),
                            child: Icon(Icons.event_available, color: Colors.white,)
                          )
                        ],
                      )
                    )
                    
                  ],
                )
              ),
              Container(
                width: widht/2-24,
                height: widht/3,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                      width: widht/2,
                      height: widht/3,  
                      child: Card(
                        elevation: 10,
                      ),
                    ),
                    Container(
                      width: widht/2-24,
                      height: widht/3,  
                      child: CustomPaint(
                        painter: MyPainter('p'),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            width: widht/2-24-60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Approved", style: titleStyle.copyWith(color: darkPurple),),
                                Text("All your approved referrals.", style: descStyle.copyWith(color: darkPurple),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(widht/12-20, 0, widht/12-20, 0),
                            child: Icon(Icons.event, color: Colors.white,)
                          )
                        ],
                      )
                    )
                    
                  ],
                )
              ),
              
            ],
          ),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: widht/2-24,
                height: widht/3,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                      width: widht/2,
                      height: widht/3,  
                      child: Card(
                        elevation: 10,
                      ),
                    ),
                    Container(
                      width: widht/2-24,
                      height: widht/3,  
                      child: CustomPaint(
                        painter: MyPainter('b'),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            width: widht/2-24-60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Pendings", style: titleStyle.copyWith(color: darkBlue),),
                                Text("All your pending referrals.", style: descStyle.copyWith(color: darkBlue),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(widht/12-20),
                            child: Icon(Icons.event_note, color: Colors.white,)
                          )
                        ],
                      )
                    )
                    
                  ],
                )
              ),
              Container(
                width: widht/2-24,
                height: widht/3,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                      width: widht/2,
                      height: widht/3,  
                      child: Card(
                        elevation: 10,
                      ),
                    ),
                    Container(
                      width: widht/2-24,
                      height: widht/3,  
                      child: CustomPaint(
                        painter: MyPainter('r'),
                      ),
                    ),

                    Container(
                      width: widht/2-24,
                      height: widht/3,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            width: widht/2-24-60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Refused", style: titleStyle.copyWith(color: darkRed),),
                                Text("All your refused referrals.", style: descStyle.copyWith(color: darkRed),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(widht/12-20),
                            child: Icon(Icons.event_busy, color: Colors.white,)
                          )
                        ],
                      )
                    )
                    
                  ],
                )
              ),
              
            ],
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: widht,
            height: widht/3,
              child: Center(
                child: Stack(
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                      width: widht/2,
                      height: widht/3,  
                      child: Card(
                        elevation: 10,
                      ),
                    ),
                    
                    
                    Container(
                      width: widht/2,
                      height: widht/3,  
                      child: CustomPaint(
                        painter: MyPainter('0'),
                      ),
                    ),

                    Container(
                      width: widht/2-24,
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            width: widht/3-24,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Add Referral", style: titleStyle.copyWith(color: darkOrange, fontSize: 22),),
                                Text("Refer and earn.", style: descStyle.copyWith(color: darkOrange),),
                              ],
                            ),
                          ),
                          // Padding(
                            // padding: EdgeInsets.all(widht/12),
                            // child: 
                            Icon(Icons.person_add, color: Colors.white,)
                          // )
                        ],
                      )
                    )
                    
                  ],
                )
              )
          ),
        ],
        
      )
    );
  }
}