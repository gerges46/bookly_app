// if you use list view inside column you must give it heigh or expanded it
import 'package:bookly_app/core/utils/widgets/custom_error.dart';
import 'package:bookly_app/features/home/data/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/widgets/custom_circular_indicator.dart';
import 'best_saller_list_view_item.dart';

class BestSallerLIstView extends StatelessWidget {
  const BestSallerLIstView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              //    shrinkWrap: true,// it mean it take height of here children if you use list view inside list view inside custom scroll view
              physics:
                  const NeverScrollableScrollPhysics(), //use it because custom scroll view it scroll here dont need it and it build only appear on screen but shrink wrap it build it all in one time and it effect in performance
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(bookModel: state.books[index],),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
