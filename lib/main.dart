import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/Screens/Nextpage.dart';
import 'package:getx_tutorials/Screens/homepage.dart';
void main(){

  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Named route using Getx",
      initialRoute:  "/",
      getPages: [
        GetPage(name: "/", page: ()=>Myapp()),
        GetPage(name: "/homepages", page: ()=>homepage()),
        GetPage(name: "/nextpage", page: ()=>NextPage()),
      ],
      home: Scaffold(
        appBar: AppBar(title: Text("Named Route using Getx"),),
        body: ElevatedButton(
          onPressed: (){Get.toNamed(
            "/homepages",
          );}, 
          child: Text("homepage")
          ),
      ),
    );
  }
}