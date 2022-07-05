import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'GetxController.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx Unique Id",
      home: Scaffold(
        appBar: AppBar(title: Text("GetX UniqueId"),),
        body: Center(
          child: Column(
            children: [
              GetBuilder<GetController>(
                id: "first",
                init: GetController(),
                builder: (Controller){
                  return Text("${Controller.count}");

                }
                ),
                   GetBuilder<GetController>(
              
                init: GetController(),
                builder: (Controller){
                  return Text("${Controller.count}");

                }
                ),
                ElevatedButton(
                  onPressed: (){
                    Get.find<GetController>().incress();
                  }, 
                  child: Text("Incress"))
            ],
          ),
        ),
      ),
    );
  }
}