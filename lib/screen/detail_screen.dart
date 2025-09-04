import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static var routeName = '/detail';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args['itemId']}'),
            Text('Detail: ${args['message']}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'item detail returned.');
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}