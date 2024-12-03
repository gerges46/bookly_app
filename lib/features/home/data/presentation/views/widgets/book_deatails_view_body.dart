import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookDeatailsViewCustomAppBar(),
        ],
      ),
    );
  }
}
