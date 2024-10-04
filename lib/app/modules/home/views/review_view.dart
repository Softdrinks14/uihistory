import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uihistory/app/modules/home/views/home_view.dart';
import '../controllers/review_controller.dart';

class ReviewScreen extends StatelessWidget {
  final ReviewController reviewController = Get.put(ReviewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Ulasan'),
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
          children: [
            Card(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //gambar kambing e ganti ndek kene
                    Icon(
                      Icons.pets,
                      size: 25,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //ganti tulisan jenis barang
                        Text(
                          'RICI',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(''),
                        Text('SIGUNG berkualitas'),
                        Text('FREE SIAPA SAJA YANG MAU MENAMPUNG'),
                        Text('1 ekor'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(8), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2, 
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: RatingSection(
                title: '  Penjual',
                rating: reviewController.sellerRating,
                onRatingUpdate: reviewController.updateSellerRating,
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(8), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), 
                    spreadRadius: 2,
                    blurRadius: 4, 
                    offset: Offset(0, 2), 
                  ),
                ],
              ),
              child: RatingSection(
                title: '  Hewan',
                rating: reviewController.animalRating,
                onRatingUpdate: reviewController.updateAnimalRating,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                ),
                onPressed: reviewController.submitReview,
                child: Text('Kirim Ulasan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingSection extends StatelessWidget {
  final String title;
  final RxDouble rating;
  final Function(double) onRatingUpdate;

  RatingSection({required this.title, required this.rating, required this.onRatingUpdate});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        Obx(() => Row(
          children: List.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < rating.value ? Icons.star : Icons.star_border,
                color: Colors.yellow,
              ),
              onPressed: () {
                onRatingUpdate(index + 1.0);
              },
            );
          }),
        )),
      ],
    );
  }
}
