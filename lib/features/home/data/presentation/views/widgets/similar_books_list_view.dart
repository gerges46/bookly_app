import 'package:bookly_app/core/utils/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/core/utils/widgets/custom_error.dart';
import 'package:bookly_app/features/home/data/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarListViewBooks extends StatelessWidget {
  const SimilarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.15,
    child: ListView.builder(
      itemCount:state.books.length ,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              urlImage:
                state.books[index].volumeInfo.imageLinks?.thumbnail ??'',
            ),
          );
        }),
  );
}else if(state is SimilarBooksFailure) {
return CustomError(errorMessage: state.errorMessage);
}
else{
  return const CustomCircularIndicator();
}
      },
    );
  }
}
