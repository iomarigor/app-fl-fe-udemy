import 'package:flutter/material.dart';
import 'package:udemy_app/themes/app.theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.accessibility_new_outlined,
            color: AppTheme.primaryColor,
          ),
          title: Text("data"),
          subtitle: Text("test local para la asd"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
              ),
              TextButton(onPressed: () {}, child: Text("Ok"))
            ],
          ),
        )
      ]),
    );
  }
}
