
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffB8B8B8),
      appBar: AppBar(
        backgroundColor: Color(0xff2F0F5D),
        title: Text("PAG Poker"),
      ),
      body: Center(

        child: Text("Iampagpoker"),
      ),

    );
  }
}
