import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar using GetX",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "snakbar Text", 
                    "Snackbar Messages",
                    titleText: const Text(
                      "this is Snakbar",
                      style: TextStyle(color: Colors.blue),
                    ),
                    messageText: const Text("this is message text"),
                    colorText: Colors.red,
                    backgroundColor: Colors.pink,
                    snackPosition: SnackPosition.BOTTOM,
                    borderRadius: 2,
                    margin: const EdgeInsets.all(3),
                    backgroundGradient: const LinearGradient(colors: [
                      Colors.red,Colors.blue,
                    ]),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    //add like leadding icon on Snackbar
                    icon: Icon(Icons.send, color: Colors.blue,),
                    shouldIconPulse: false,
                    //add Trailing Icon on SnackBar
                    mainButton: TextButton(onPressed: (){}, child: Text("send")),
                    onTap: (Value){
                      print("SnackBar is Clicked");

                    }


                    );
                },
                child: const Text("Show SnackBar")),
          ),
        ),
      ),
    );
  }
}
