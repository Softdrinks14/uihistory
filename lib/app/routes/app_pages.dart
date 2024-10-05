import 'package:get/get.dart';
import 'package:uihistory/app/modules/home/views/payment_view.dart';
import 'package:uihistory/app/modules/home/views/review_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const REVIEW = Routes.REVIEW;
  static const PAYMENT = Routes.PAYMENT;


  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REVIEW,
      page: () => ReviewScreen(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentPage(),
    )
  ];
}
// import 'package:get/get.dart';
// import '../modules/home/views/payment_view.dart';
// import '../modules/home/views/review_view.dart';
// import '../modules/home/views/home_view.dart';

// class AppPages {
//   static const INITIAL = '/home';

//   static final routes = [
//     GetPage(
//       name: '/home',
//       page: () => HomeView(),
//     ),
//     GetPage(
//       name: '/review',
//       page: () => ReviewScreen(),
//     ),
//     GetPage(
//       name: '/payment',
//       page: () => PaymentPage(),
//     ),
//   ];
// }


