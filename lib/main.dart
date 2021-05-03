import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx/bindings/home_binding.dart';
import 'package:learn_getx/cart.dart';
import 'package:learn_getx/homepage.dart';
import 'package:learn_getx/shop.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: HomeBinding(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage(), binding: HomeBinding()),
        GetPage(name: '/shop/:produtoVariado', page: () => Shop()),
        GetPage(name: '/cart', page: () => Cart()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      //home: HomePage(),
      initialRoute: '/home',
    );
  }
}

