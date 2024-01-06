// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation & Routing"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-kedua');
              },
              child: Text('Go To Second Screen')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-kedua-dengan-data',
                    arguments: 'Halooooooooo, Nama saya Udin');
              },
              child: Text('Navigation with Data')),
          ElevatedButton(
              onPressed: () async {
                var scaffoldMessenger = ScaffoldMessenger.of(context);
                var hasil =
                    await Navigator.pushNamed(context, '/mengembalikan-data');
                var snackbar = SnackBar(
                  content: Text('$hasil'),
                );

                scaffoldMessenger.showSnackBar(snackbar);
                print(hasil);
              },
              child: Text('Return Data from another Screen')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/halaman-pengganti');
              },
              child: Text('Replace Screen')),
        ],
      )),
    );
  }
}
