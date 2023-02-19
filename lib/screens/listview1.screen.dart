import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  final options=const ["name", "description", "database","test"];
  
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Listview1'),
        ),
      body:ListView(
        children:[
          ...options.map((e) => ListTile(
            leading:const Icon(Icons.local_activity_outlined),
            title: Text(e),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          )).toList(),
          const Divider(),
          const Text("test"),
          const Divider()
        ],
      )
    );
  }
}