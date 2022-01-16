import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/pages/detail/binding/detail_binding.dart';
import 'package:getx_todo_app/pages/detail/view/detail.dart';
import 'package:getx_todo_app/pages/home/binding/home_binding.dart';
import 'package:getx_todo_app/pages/home/view/home.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List using getX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(name: '/detail', page: () => DetailScreen(), binding: DetailBinding())
      ],
      initialRoute: "/home",

    );
  }
}
