import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uihistory/app/modules/home/views/review_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(ReviewScreen());
          },
          child: Text('Go to Review'),
        ),
      ),
    );
  }
}
