import 'package:book_app/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadBook extends StatelessWidget {
  const ReadBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBFC2C3),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Currently Unavailable!!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 50),
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
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Return',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(160, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side:
                          const BorderSide(width: 2, color: Color(0xFF007084))),
                  onPressed: () {
                    Get.to(() => Home(), transition: Transition.zoom);
                  },
                  child: const Text(
                    'Move Home',
                    style: TextStyle(fontSize: 18, color: Color(0xFF007084)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
