import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_tutorials/Getx_controller.dart';

void main() {
  runApp(
    Myapp(),
  );
}
class Myapp extends StatelessWidget {
   Myapp({Key? key}) : super(key: key);
   //if init is not used in Getx Bulder
  Controller mycontroller= Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx Controller Using ",
      home: Scaffold(
        appBar: AppBar(title: Text("ReactiveStae Manager Using Getx_Controller Type"),
      
        ),
        body: Center(
          child: Column(
            children: [
              // Obx(()=>Text("this your name ${mycontroller.users.name.value}"))
              GetX<Controller>(
               // init: Controller(),//this Create an Instance of Controller and Initialize it
                builder: (Controller){
                  return Text("the value of this Controller is ${mycontroller.count}");
                  
                }
                ),
                ElevatedButton(
                  onPressed: (){
                   // Get.find<Controller>().increment();
                   mycontroller.increment();
                  }
                , child: Text("Increment "),
                )
              
            ],
          ),
        ),
      ),
    );
  }
}