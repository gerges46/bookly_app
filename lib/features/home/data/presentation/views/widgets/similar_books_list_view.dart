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
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              urlImage:
                  'https://images.unsplash.com/photo-1733320929188-d8b7a96adba4?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
