import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/homeController.dart';

class Cart extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Text("${controller.status}"),
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text("Voltar")
            )
          ],
        ),
      ),
    );
  }
}
