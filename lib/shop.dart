import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/cart.dart';
import 'package:learn_getx/controller/homeController.dart';

class Shop extends StatelessWidget {

  HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Text(Get.arguments),
            Text("${Get.parameters['produtoVariado']}"),
            ElevatedButton(
                onPressed: (){
                  //Get.offAll(Cart());
                  Get.offAllNamed('/cart');
                },
                child: Text("Ir para Cart")
            ),
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text("Voltar para o inicio")
            )
          ],
        ),
      ),
    );
  }
}
