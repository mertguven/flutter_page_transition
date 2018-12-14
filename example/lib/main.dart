import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Fade Second Page'),
              onPressed: () {
                Navigator.push(
                    context, PageTransition(type: 'fade', child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Left To Right Slide Second Page'),
              onPressed: () {
                Navigator.push(context,
                    PageTransition(type: 'leftToRight', child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Size Slide Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        curve: Curves.bounceOut,
                        type: 'size',
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Rotate Slide Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.bounceOut,
                        type: 'rotate',
                        alignment: Alignment.topCenter,
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Scale Slide Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: 'scale',
                        alignment: Alignment.topCenter,
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Upto Down Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: 'upToDown',
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Down To Up Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: 'DownToUp',
                        child: SecondPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition SecondPage'),
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}