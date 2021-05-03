import 'package:get/get.dart';

class HomeController extends GetxController{

  // var status = "online".obs;
  // var followers = 50.obs;
  //
  // @override
  // void onInit() {
  //   // ever(status, (_){
  //   //   print("Status value changed");
  //   // });
  //   // everAll([status, followers], (_){
  //   //   print("Status or Follower value changed");
  //   // });
  //   once(status, (_){
  //     print("status changed and function called only once");
  //   });
  //   super.onInit();
  // }

  var email = ''.obs;

  void updateEmail(String newEmail){
    email.value = newEmail;
    //update(['status_widget']);
  }

}