import 'package:get/get.dart';
import 'package:getx_todo_app/pages/home/controller/home_controller.dart';
import 'package:getx_todo_app/services/api_service.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
  Get.put(ApiService());

  Get.put(HomeController());
  }

}