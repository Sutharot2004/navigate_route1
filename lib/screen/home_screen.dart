import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Home app')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.pushNamed(
              context,
              DetailScreen.routeName,
              arguments: {'itemId': 'Item-456', 'message': 'ข้อมูลนำผ่าน arguments'},
            );
            print('รับค่ากลับ: $result');
          },
          child: const Text('Go to Detail'),
        ),
      ),
    );
  }
}