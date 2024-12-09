import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  // dont do that you resive more than varable like this **final image;**  here the correct you recive model of it and use it 
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           CustomBookImage(urlImage: bookModel.volumeInfo.imageLinks?.thumbnail??''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:  Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                  bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20,
                      ),
                      BookRating(
                      rating: 4.8,
                      count: 532,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
