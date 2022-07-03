import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_tutorials/Screens/Nextpage.dart';
import 'package:getx_tutorials/Screens/homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Named Route Using Getx Librery",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        // GetPage(name: "/", page:()=> Myapp(),
        //  transition: Transition.zoom,
        // ),
        GetPage(name: "/homepages", page: () => homepage()),
        GetPage(name: "/NextPage", page: () => NextPage()),
      ],
      home: Scaffold(
          appBar: AppBar(
            title: Text("Named route using Getx Librery"),
          ),
          body: Container(
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      "/homepages ? channels=this is data pass to homepage & content= this is content data too");
                },
                child: Text("Go to home page")),
          )),
    );
  }
}
