import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_deatails_view_body.dart';

class BookDeatailsView extends StatefulWidget {
  const BookDeatailsView({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  State<BookDeatailsView> createState() => _BookDeatailsViewState();
}

class _BookDeatailsViewState extends State<BookDeatailsView> {
  @override
  void initState() {
BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBook(category:widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDeatailsViewBody()),
    );
  }
}
