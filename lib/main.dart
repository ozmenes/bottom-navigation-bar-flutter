import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey= GlobalKey<ScaffoldState>();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.deepOrangeAccent[200],
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('This is a bottom bat navigation example',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        //backgroundColor: Colors.deepOrangeAccent[200],
        backgroundColor: Colors.deepOrangeAccent[200],
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 55.0,
        animationCurve: Curves.bounceInOut,
        items: <Widget>[
          Icon(Icons.home,size:30,color: Colors.black),
          Icon(Icons.dashboard,size:30,color: Colors.black),
          Icon(Icons.shopping_bag_outlined,size:30,color: Colors.black),
          Icon(Icons.map_outlined,size:30,color: Colors.black),
          Icon(Icons.settings,size:30,color: Colors.black),

        ],
        onTap: (index){
          debugPrint('Current index is $index');
        },
      ),
    );
  }
}


// body: Container(
// color: Colors.deepOrangeAccent[200],
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Container(
// padding: EdgeInsets.symmetric(horizontal: 20.0),
// child: Text('This is a bottom bat navigation example',
// style: TextStyle(color: Colors.white, fontSize: 19),
// ),
// )
// ],
// ),
// ),