// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nav_route/halaman_kedua.dart';
import 'package:nav_route/halaman_kedua_dengan_data.dart';
import 'package:nav_route/halaman_lainnya.dart';
import 'package:nav_route/halaman_pengganti.dart';
import 'package:nav_route/halaman_pertama.dart';
import 'package:nav_route/mengembalikan_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HalamanPertama(),
        '/halaman-kedua': (context) => HalamanKedua(),
        '/halaman-kedua-dengan-data': (context) => HalamanKeduaDenganData(
            data: ModalRoute.of(context)?.settings.arguments as String),
        '/mengembalikan-data': (context) => MengembalikanData(),
        '/halaman-pengganti': (context) => HalamanPengganti(),
        '/halaman-lainnya': (context) => HalamanLainnya(),
      },
    );
  }
}
