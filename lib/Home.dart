import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'global.dart' as global;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  var menus;

  void initState() {
      get_menus();
    super.initState();
  }

  get_menus(){
    http.get(global.baseUrl + 'news_ctrl/menus/').then((response) {
      //print("Response status: ${response.statusCode}");
      setState(() {
        menus = response.body;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(global.appTitle),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
          //margin: EdgeInsets.symmetric(vertical: 3.0),
          padding: EdgeInsets.symmetric(vertical: 2),
          height: 32.0,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[

            ],
          ),


      ),
    );
  }
}


class containeritem extends StatelessWidget {
  containeritem({ this.menuText});
  final String menuText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2),
      child: RaisedButton(
        child: Text(menuText),
        onPressed: () => {
          //etMenus()
        },
      ),
    );
  }
}

