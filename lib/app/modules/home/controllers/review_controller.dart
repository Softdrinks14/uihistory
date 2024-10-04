import 'package:get/get.dart';

class ReviewController extends GetxController{
  var sellerRating = 5.0.obs;
  var animalRating = 5.0.obs;

  void updateSellerRating(double rating) {
    sellerRating.value = rating;
  }

  void updateAnimalRating(double rating) {
    animalRating.value = rating;
  }

  void submitReview() {
    Get.snackbar("Ulasan Terkirim", "Terima kasih atas ulasannya!");
  }
}