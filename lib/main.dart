import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){

runApp(Myapp());
}
class Myapp extends StatelessWidget {
   Myapp({Key? key}) : super(key: key);
 var count=0.obs; //observable or Reactive Variables obs(()=>q)
 void increment(){
  count++;
 }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx State management",
      home: Scaffold(
        appBar: AppBar(title: Text("Getx Reactive State management"),
        ),
        body: Center(
          child: Column(
            children: [
              Obx(()=>Text(" the counter value is $count")),
              ElevatedButton(onPressed: (){
                increment();

              }, 
              child: Text("Increment")
              )
            ],
          ),
        ),
      ),
    );
  }
}