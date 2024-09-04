
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scafffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("안돼!!"),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_outlined),
            Text("우리는 플러터다"),
            Image.asset("../assets/network.png",width: 50, height: 50,),
            Icon(Icons.account_balance_outlined)
          ],
        ),
      )
    );
  }

}