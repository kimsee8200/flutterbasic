
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 목록")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return GestureDetector(
              child: Card(
                child: ListTile(
                  leading: Text("1917"),
                  title: Text("게시글 목록"),
                  subtitle: Text("작성자"),
                  trailing: Icon(Icons.more_vert),
                )
              ),
              onTap: (){
                Navigator.pushNamed(context, "/board/read", arguments: 1917);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, "/board/insert");
          },
          child: const Icon(Icons.create),
      ),
    );
  }
}
