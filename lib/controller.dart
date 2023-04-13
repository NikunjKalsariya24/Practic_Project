import 'package:get/get.dart';

class Controller extends GetxController{
  RxInt count = 0.obs;

  increment() => count++;

  dicrement(){
    count--;
  }

RxBool loading = false.obs;
  RxBool allLoaded = false.obs;



}