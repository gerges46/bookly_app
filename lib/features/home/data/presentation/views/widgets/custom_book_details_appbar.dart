import 'package:flutter/material.dart';

class BookDeatailsViewCustomAppBar extends StatelessWidget {
  const BookDeatailsViewCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.close)),
        IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart)),
      ],
    );
  }
}