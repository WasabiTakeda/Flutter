import 'package:flutter/material.dart';

const int itemCount = 20;

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item ${(index + 1)} '),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.select_all),
            onTap: () {},
          );
        });
  }
}
