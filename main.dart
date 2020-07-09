import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String value='';

  void onShow() {
    setState(() {
      value= new DateTime.now().toString();
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('floatingactionbutton'),
      ),
      body: Column(
        children: <Widget> [
          Text('value = $value' , style: TextStyle(fontSize:40 , color: Colors.blue), textAlign: TextAlign.center,)
        ],
      ),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: onShow ,
          backgroundColor: Colors.red,
          label: Text('Time'),
          icon: Icon(Icons.timelapse),

        ),


    );
  }

}

