// lib/views/payment_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uihistory/app/modules/home/controllers/payments_controller.dart';
import 'package:uihistory/app/modules/home/views/home_view.dart';

class PaymentPage extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back(result: HomeView());
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No. Pesanan: B0Y0-FQWL-XAQ6-L2VQ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  PaymentOption('DANA', controller),
                  PaymentOption('Gopay', controller),
                  PaymentOption('COD', controller),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.green[100],
              child: Column(
                children: [
                  Text(
                    'Total Belanja',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rp 4.500.000',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (controller.selectedPaymentMethod.value.isNotEmpty) {
                  Get.snackbar('Pembayaran', 'Pembayaran berhasil!');
                } else {
                  Get.snackbar('Error', 'Silakan pilih metode pembayaran.');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: Text(
                'Proses Pembayaran',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String title;
  final PaymentController controller;

  PaymentOption(this.title, this.controller);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Radio<String>(
                    value: title,
                    groupValue: controller.selectedPaymentMethod.value,
                    onChanged: (value) {
                      controller.selectPaymentMethod(value!);
                    },
                  ),
                  Text(title),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
