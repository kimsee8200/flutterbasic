import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("이것은 앱이다"),backgroundColor: Colors.amber,titleTextStyle: TextStyle(color: Colors.blueAccent),),
        body: Row(
            children: [
              SizedBox(
                child: Icon(Icons.add,color: Colors.red,)
              ),
              SizedBox(
                child: TextButton(onPressed: (){}, child: Text("워매")),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: (){},
                  child: Icon(Icons.access_alarms_rounded),
                  style: ButtonStyle(),

                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.account_circle)
              )
            ],
        )
      ),
    );
  }

}

