// ignore: file_names
import 'package:get/get.dart';




class Mycontroller extends GetxController{
  var count=0; //simple state manager there is no neeed to add obs
  void increment(){
    count++;
    update();
  }

}