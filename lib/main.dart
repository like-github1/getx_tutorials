import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/Controlller.dart';


void main(){


  runApp(Myapp());
}

class Myapp extends StatelessWidget {
 Myapp({Key? key}) : super(key: key);
Mycontroller mycontroller=Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx controller LifeCycle method",
      home: Scaffold(
        appBar: AppBar(title: Text("Getx LifeCyle Method"),),
        body: Center(
          child: Column(
            children: [
            GetBuilder<Mycontroller>(
              //Getx Controller Life Cycle 
              // you can Perform your action when Controller Starts and Controller Disposes
              // initState: (state) => mycontroller.incress(),
              // dispose: (disposed){
              //   Mycontroller().TaskPerformWhenDisposed();
              // },
              init:Mycontroller() ,
              builder: (controller){
                return Text("the count value is ${controller.count}");
              }
              ),
              ElevatedButton(onPressed: (){
               // Get.find<Mycontroller>().incress();
               mycontroller.incress();
              },
               child:Text("Incress"),
               )
            ],
          ),
        ),
      ),
    );
  }
}