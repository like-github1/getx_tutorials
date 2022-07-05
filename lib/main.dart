import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'getxController.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Simple State Manager",
      home: Scaffold(
        appBar: AppBar(
          title: Text("simple State manager"),
        ),
        body: Center(
          child: Column(
            children: [
              GetBuilder<Getcontroller>(
                  init: Getcontroller(),
                  builder: (controller) {
                    return Text("the cont value is ${controller.count}");
                  }),
              ElevatedButton(onPressed: () {}, child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
