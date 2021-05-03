import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx/shop.dart';

import 'controller/homeController.dart';

class HomePage extends StatelessWidget {

  //HomeController homeController = Get.put(HomeController(), permanent: true);

  HomeController homeController = Get.find<HomeController>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final storage = GetStorage();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Getx Storage"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email address"
                ),
              ),
            ),
            SizedBox(height: 10),

            // GetBuilder<HomeController>(
            //     id: "follower_widget",
            //     builder: (_){
            //       print("Followers Widget Builds");
            //       return Text("${homeController.followers}");
            //     }
            // ),

            // GetX<HomeController>(
            //   //init: HomeController(),
            //   //builder: (homeController){
            //   //id: "status_widget",
            //   builder: (_){
            //     print("Status Widget Builds");
            //     return Text("${homeController.status}");
            //   }
            // ),

            // Obx((){
            //   print("Status Widget Builds");
            //   return Text("${homeController.status}");
            // }),


            ElevatedButton(
              //child: Text("Show Snackbar"),
              //child: Text("Show Dialog"),
              //child: Text("Show BottomSheet"),
              //child: Text("Show Snackbar"),
              //child: Text("Navigate to Shop"),
              child: Text("Submit"),
              onPressed: () async {

                  if(GetUtils.isEmail(emailController.text)){
                    storage.write("email", emailController.text);
                    emailController.text = '';
                  }else{
                    Get.snackbar(
                        "E-mail incorreto",
                        "Enter com ID valide",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.red,
                        colorText: Colors.white
                    );
                  }

                 //homeController.updateStatus("offline");
                
                 // Navigator.of(context).push(
                 //   MaterialPageRoute(builder: (context) => Shop())
                 // );
                 // var data = await Get.to(Shop(), arguments: "Flutter");
                 // print(data);

                 // Get.toNamed('/shop/Android');

                 // _scaffoldKey.currentState.showBottomSheet((context) => Container(
                 //   color: Colors.red,
                 //   height: 200,
                 // ));
                 //Get.bottomSheet(Container(height: 200, color: Colors.red));
                 
                 // showDialog(
                 //     context: context,
                 //     builder: (context) => AlertDialog(
                 //       content: Text("Native dialog"),
                 //     )
                 // );
                 // Get.defaultDialog(
                 //   content: Text("GetX Rockss")
                 // );

                  //_scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Native Snackbar")));
                  // Get.snackbar("Olá", "Isto é GetX");

                  // Get.bottomSheet(
                  //   Container(
                  //     height: 200,
                  //     //color: Colors.yellow,
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: [
                  //         CircularProgressIndicator(),
                  //         Icon(Icons.message, color: Colors.black, size: 50),
                  //       ],
                  //     ),
                  //   ),
                  //   backgroundColor: Colors.orange,
                  //   isDismissible: false,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20)
                  //   )
                  // );

                  // Get.defaultDialog(
                  //   title: "Você tem certeza?",
                  //   content: Text("Você quer sair da aplicação"),
                  //   backgroundColor: Colors.yellow,
                  //   textCancel: "Não",
                  //   textConfirm: "Sim",
                  //   confirmTextColor: Colors.white,
                  //   onCancel: (){
                  //
                  //   },
                  //   onConfirm: (){
                  //
                  //   },
                  //   barrierDismissible: false
                  // );

                  // Get.snackbar("This is a Snackbar", "From getx",
                  //   snackPosition: SnackPosition.BOTTOM,
                  //   backgroundColor: Colors.blue,
                  //   colorText: Colors.white,
                  //   borderRadius: 50,
                  //   margin: EdgeInsets.all(20),
                  //   icon: Icon(Icons.arrow_back_sharp, color: Colors.white),
                  //   mainButton: TextButton(
                  //     onPressed: (){
                  //
                  //     },
                  //     child: Text("Action"),
                  //     style: TextButton.styleFrom(
                  //       primary: Colors.white,
                  //       backgroundColor: Colors.red
                  //     ),
                  //   ),
                  //   padding: EdgeInsets.all(20)
                  // );


              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: (){
                  homeController.updateEmail("${storage.read('email')}");
                },
                child: Text("View")
            ),

            Obx((){
              return Text("Email Address: ${homeController.email.value}");
            })
          ],
        ),
      ),
    );
  }
}
