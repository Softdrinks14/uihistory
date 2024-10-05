// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:uihistory/app/routes/app_pages.dart';
// import '../controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('HomeView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Get.toNamed('/review');
//               },
//               child: Text('Go to Review'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Get.toNamed('/payment');
//               },
//               child: Text('Go to Payment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uihistory/app/modules/home/views/payment_view.dart';
import 'package:uihistory/app/modules/home/views/review_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(ReviewScreen());
              },
              child: Text('Go to Review'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PaymentPage());  // Navigate to PaymentView without bindings
              },
              child: Text('Go to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
