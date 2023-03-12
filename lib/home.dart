// import 'package:book_app/models/banners.dart';
import 'package:book_app/models/banners.dart';
import 'package:book_app/models/book_model.dart';
import 'package:book_app/view/details.dart';
import 'package:book_app/view/readbook.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List category = [
    'All',
    'Recommended',
    'Popular Books',
    'My Books',
    'Top Rated Books'
  ];
  int _currentIndex = 0;

  final bannerLength = banner.length;
  // Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 227, 227, 227),
      backgroundColor: const Color.fromARGB(255, 231, 234, 234),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 231, 234, 234),
        elevation: 0,
        title: const Text(
          'Hi Sanik,',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        // leading: Icon(Icons.search),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(((ReadBook())), transition: Transition.zoom);
            },
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                // alignment: Alignment.center,
                children: [
                  CarouselSlider(
                    items: banner.map((banner) {
                      return GestureDetector(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 8),
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(20),
                            //   // boxShadow: [
                            //   //   BoxShadow(
                            //   //       color: Colors.red,
                            //   //       spreadRadius: 2,
                            //   //       blurRadius: 8,
                            //   //       offset: Offset(4, 4))
                            //   // ]
                            // ),
                            width: double.infinity,
                            child: CachedNetworkImage(
                                imageUrl: banner.imgUrl, fit: BoxFit.fill),
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      scrollPhysics: BouncingScrollPhysics(),
                      autoPlay: true,
                      enlargeCenterPage: true,
                      // aspectRatio: 16 / 9,
                      // aspectRatio: 2,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 900),
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),

                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < bannerLength; i++)
                          Container(
                            height: 13,
                            width: 13,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: _currentIndex == i
                                  ? Colors.red
                                  : Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),

                  // PageView.builder(
                  //   physics: AlwaysScrollableScrollPhysics(),
                  //   // itemCount: banner.length,
                  //   itemBuilder: (context, index) {
                  //     final imgLength = banner.length;
                  //     return ClipRRect(
                  //       borderRadius: BorderRadius.circular(15),
                  //       child: GestureDetector(
                  //         // onTap: () async {
                  //         // launch(banner[index].link);
                  //         // },
                  //         child: CachedNetworkImage(
                  //           progressIndicatorBuilder:
                  //               (context, url, progress) => Center(
                  //             child: CircularProgressIndicator(
                  //               value: progress.progress,
                  //             ),
                  //           ),
                  //           imageUrl: banner[index % imgLength].imgUrl,
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                // margin: EdgeInsets.only(right: 10, left: category == 0 ? 10 : 0),
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(category[index],
                              style: const TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w400)),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 210,
                width: 367,
                // color: Colors.amber,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: book_models.length,
                  itemBuilder: (context, index) {
                    final book = book_models[index];
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => DetailsPage(book),
                                        transition: Transition.leftToRight);
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    // elevation: 5,
                                    color: Colors.white,
                                    child: SizedBox(
                                      // decoration: BoxDecoration(
                                      //   color: Colors.white,
                                      //   borderRadius: BorderRadius.circular(15),
                                      // ),
                                      height: 155,
                                      width: 330,
                                      // color: Colors.amber,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 115),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              book_models[index].title,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                              maxLines: 2,
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              book_models[index].description,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                              maxLines: 4,
                                            ),
                                            const SizedBox(height: 25),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Row(
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(book_models[index]
                                                      .rating),
                                                  Text(book_models[index].genre)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 155,
                              width: 100,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    progressIndicatorBuilder:
                                        (context, url, progress) => Center(
                                              child: CircularProgressIndicator(
                                                value: progress.progress,
                                                color: Colors.red,
                                              ),
                                            ),
                                    imageUrl: book_models[index].imageUrl),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'You may Also like',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: book_models.length,
                      itemBuilder: (context, index) {
                        final book = book_models[index];
                        return InkWell(
                          onTap: () {
                            Get.to(() => DetailsPage(book),
                                transition: Transition.fade);
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8, left: 8),
                                child: SizedBox(
                                  height: 145,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        progressIndicatorBuilder: (context, url,
                                                progress) =>
                                            Center(
                                              child: CircularProgressIndicator(
                                                value: progress.progress,
                                              ),
                                            ),
                                        imageUrl: book_models[index].imageUrl),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 4),
                                width: 105,
                                child: Text(
                                  book_models[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(book_models[index].genre)
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
