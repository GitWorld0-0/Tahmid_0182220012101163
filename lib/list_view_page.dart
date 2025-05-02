import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.label),
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}
