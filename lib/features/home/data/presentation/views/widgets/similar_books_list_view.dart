
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarListViewBooks extends StatelessWidget {
  const SimilarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
