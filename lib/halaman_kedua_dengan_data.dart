// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HalamanKeduaDenganData extends StatelessWidget {
  HalamanKeduaDenganData({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back')),
        ],
      )),
    );
  }
}
