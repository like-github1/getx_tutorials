import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var count = 0;
  void incress() async {
    await Future<int>.delayed(const Duration(seconds: 3));
    count++;
    update();
  }

  void TaskPerformWhenDisposed() {
    //this task is Performed When Controoler is Disposed
  }
  void TaskWhenControllerInitialized() {}
  @override
  void onInit() {
    // TODO: implement onInit
    print("Getx is Initialized");
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    print("Getx is Closed");
    super.onClose();
  }
  
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  // TODO: implement onStart
  InternalFinalCallback<void> get onStart => super.onStart;
}
