import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          child: ElevatedButton(onPressed: (){
            Get.toNamed(
         
            "/ ? channels=this next page & content= Next data "
          
            );

          }, child: Text("Back to main Screen")),
        );
  }
}