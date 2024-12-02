import 'package:flutter/material.dart';

import 'widgets/book_deatails_view_body.dart';

class BookDeatailsView extends StatelessWidget {
  const BookDeatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDeatailsViewBody(),
    );
  }
}