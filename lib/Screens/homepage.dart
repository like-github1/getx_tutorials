import 'package:flutter/material.dart';
import 'package:get/get.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          child: ElevatedButton(onPressed: (){
            Get.toNamed(
         
            "/NextPage? channels=this next page & content= Next data "
          
            );

          }, child: Text("Nextpage")),
        );
  }
}