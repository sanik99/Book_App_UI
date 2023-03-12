import 'package:book_app/models/book_model.dart';
import 'package:book_app/view/moreinfo.dart';
import 'package:book_app/view/readbook.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  final Book_Model bookModel;

  // ignore: use_key_in_widget_constructors
  const DetailsPage(this.bookModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                      child: CircularProgressIndicator(
                        value: progress.progress,
                      ),
                    ),
                imageUrl: bookModel.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    bookModel.title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
                Column(
                  children: [
                    Text(bookModel.rating),
                    const SizedBox(height: 10),
                    Text(
                      bookModel.genre,
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 200,
            width: double.infinity,
            // color: Colors.amber,
            child: Text(
              bookModel.description,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color(0xFF007084)),
                onPressed: () {
                  Get.to(() => ReadBook(),
                      transition: Transition.rightToLeftWithFade);
                },
                child: const Text(
                  'Read Book',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(160, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(width: 2, color: Colors.grey)),
                onPressed: () {
                  Get.to(() => MoreInfo(), transition: Transition.zoom);
                },
                child: const Text(
                  'More info',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
