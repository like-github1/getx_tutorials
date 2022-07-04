import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_tutorials/controller.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({Key? key}) : super(key: key);
  final mycontroller _controller = Get.put(mycontroller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX_Controller",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx_Controller"),
        ),
        body: Column(
          children: [
            Obx(() => Text("the name is ${_controller.students.value.name}")),
            ElevatedButton(
              onPressed: () {
                _controller.converttouppercase();
              },
              child:const  Text("Upper"),
            )
          ],
        ),
      ),
    );
  }
}
