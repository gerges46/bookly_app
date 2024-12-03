import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
        const  BookDeatailsViewCustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.17),
            child:const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
