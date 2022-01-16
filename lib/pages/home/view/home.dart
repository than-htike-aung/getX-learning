import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx_todo_app/pages/detail/view/detail.dart';
import 'package:getx_todo_app/pages/home/controller/home_controller.dart';
import 'package:getx_todo_app/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Inject
   // final apiService = Get.put(ApiService());
    //final homeController = Get.put(HomeController());

    //Using Binding
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(
               () =>  Text(
                 "${homeController.count}",
                 style: TextStyle(fontSize: 24),)
           ),
            FlatButton(
                onPressed: (){
                 // Get.to(DetailScreen());
                 //Get.toNamed("/detail");
                  //print(apiService.fetchTextFromApi());
                  homeController.increment();
                },
                child: Text("Increment"),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: (){
                // Get.to(DetailScreen());
                //Get.defaultDialog(title: "this is dialog");
                Get.snackbar('title', 'this is getX snackbar',snackPosition: SnackPosition.BOTTOM);
                //Get.toNamed("/detail");
                //print(apiService.fetchTextFromApi());

              },
              child: Text("Go To Details"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
