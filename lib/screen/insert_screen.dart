import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../models/Board.dart';
import 'package:http/http.dart' as http;

class InsertScreen extends StatefulWidget {
  const InsertScreen({super.key});

  @override
  State<InsertScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<InsertScreen> {

  List<Board> _boardList = [];

  @override
  void initState() {
    super.initState();
    getBoardList().then((result){
      setState(() {
        _boardList = result;
      });
    })
  }

 // get
  Future<List<Board>> getBoardList() async{
    // 1. url
    var url = "http://10.0.2.2:8080/board";
    
    // 2. http method
    var response = await http.get(Uri.parse(url));

    // 3. data 확인
    print("it is response body");
    print(response.body);

    // 변환
    var utf8Decoded = utf8.decode(response.bodyBytes);
    var boardList = jsonDecode(utf8Decoded);
    List<Board> list = [];

    for(var i = 0; i < boardList.length; i++){
      list.add(Board(
          no: boardList[i]['no'],
          title: boardList[i]['title'],
          writer: boardList[i]['writer'],
          content: boardList[i]['content']
      ));
    }

    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
