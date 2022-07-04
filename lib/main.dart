import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_tutorials/user.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
   Myapp({Key? key}) : super(key: key);
  var users=user(name: "sami",age: 24).obs; //pass Reactive Variables to User Classs

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State anagemnt Using GetX by obs and Custom Class",
      home: Scaffold(
        appBar: AppBar(title: Text("Getx State management"),),
        body: Column(
          children: [
            Obx(()=>Text(users.value.name)),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  users.update((val) {
                    val!.name=val.name.toString().toUpperCase();
                    
                  });
                },
               child: Text("UpperCase")
               ),
            ),
          ],
        ),
      ),
    );
  }
}