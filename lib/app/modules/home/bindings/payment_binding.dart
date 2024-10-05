import 'package:get/get.dart';
import '../controllers/payments_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    // Only instantiate PaymentController when needed
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
