import 'package:get/get.dart';
import 'package:getx_tutorials/user.dart';





class mycontroller extends GetxController{
  // var students= user();

  // //Create a method to change name to uppercase
  // void converttouppercase(){
  //   students.name.value=students.name.value.toUpperCase();
  // }
  var students=user(name: "lol",age: 30).obs;
  void converttouppercase(){
students.update((val) {
  val!.name=val.name.toString().toUpperCase();
});

  }


}