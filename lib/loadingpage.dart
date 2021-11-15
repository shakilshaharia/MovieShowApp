import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/sliderhome.dart';

class loadingpage extends StatefulWidget {
  const loadingpage({Key? key}) : super(key: key);

  @override
  _loadingpageState createState() => _loadingpageState();
}

class _loadingpageState extends State<loadingpage> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 4),
            () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => sliderhome()),
                (route) => false));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/loading.png',width: 250,),
          Padding(
            padding: const EdgeInsets.only(left: 180.0, right: 180.0),
            child: LinearProgressIndicator(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
