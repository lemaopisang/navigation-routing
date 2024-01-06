import 'package:flutter/material.dart';

class HalamanLainnya extends StatelessWidget {
  const HalamanLainnya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Back to First Screen"),
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
