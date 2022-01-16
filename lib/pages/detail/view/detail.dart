import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx_todo_app/pages/home/controller/home_controller.dart';
import 'package:getx_todo_app/services/api_service.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Inject
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Get.back();
            //print(apiService.fetchTextFromApi());
            print(homeController.count);
          },
        ),
      ),
    );
  }
}
