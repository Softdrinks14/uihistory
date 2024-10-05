import 'package:get/get.dart';

class PaymentController extends GetxController {
  var selectedPaymentMethod = ''.obs;

  @override
  void onInit() {
    super.onInit();
    print("PaymentController initialized");
  }

  @override
  void onClose() {
    print("PaymentController disposed");
    super.onClose();
  }

  void selectPaymentMethod(String method) {
    selectedPaymentMethod.value = method;
  }

  void processPayment() {
    if (selectedPaymentMethod.value.isNotEmpty) {
      Get.snackbar('Pembayaran', 'Proses pembayaran dengan ${selectedPaymentMethod.value}...');
    } else {
      Get.snackbar('Pembayaran', 'Pilih metode pembayaran terlebih dahulu!');
    }
  }
}
