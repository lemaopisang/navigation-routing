// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HalamanPengganti extends StatelessWidget {
  const HalamanPengganti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/halaman-lainnya');
          },
          child: Text('Open Another Screen'),
        ),
      ),
    );
  }
}
