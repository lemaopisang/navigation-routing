// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MengembalikanData extends StatefulWidget {
  MengembalikanData({super.key});

  @override
  State<MengembalikanData> createState() => _MengembalikanDataState();
}

class _MengembalikanDataState extends State<MengembalikanData> {
  final nameTextFieldController = TextEditingController();

  @override
  void dispose() {
    nameTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameTextFieldController,
            decoration: InputDecoration(
              label: Text('Masukkan Nama'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, nameTextFieldController.text);
            },
            child: Text('Kirim Data'),
          ),
        ],
      )),
    );
  }
}
