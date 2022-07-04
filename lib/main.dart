import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatefulWidget {
  myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar using GetX",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                
                },
                child: const Text("Show SnackBar")),
          ),
        ),
      ),
    );
  }
}