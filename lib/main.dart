import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_tutorials/getxController.dart';

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
   Mycontroller icontroller=Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar using GetX",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Container(
          child: Column(
            children: [
               GetBuilder<Mycontroller>(
                     
                      builder: (controller){
                        return Text("this is your data ${icontroller.count}");

                      }
                      ),
              ElevatedButton(
                onPressed: (){
                  Get.find<Mycontroller>().increment();
                  icontroller.increment();
                }, 
                child: Text("incress"),
                )
            ],
          ),
        ),
      ),
    );
  }
}