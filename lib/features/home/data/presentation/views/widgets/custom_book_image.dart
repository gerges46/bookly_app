import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.urlImage});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child:
       
            CachedNetworkImage(
              fit: BoxFit.fill,
              
          imageUrl: urlImage,
              errorWidget: (context, url, error) => const Icon(Icons.error,size: 80,color: Colors.red,),
        ),
      ),
    );
  }
}








