import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ["name", "description", "database", "test"];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview2'),
          elevation: 1,
        ),
        body: ListView.separated(
          itemBuilder: (_, index) => ListTile(
            leading: const Icon(
              Icons.local_activity_outlined,
            ),
            title: Text(
              options[index],
              style: TextStyle(color: Colors.grey[900]),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
        ));
  }
}
