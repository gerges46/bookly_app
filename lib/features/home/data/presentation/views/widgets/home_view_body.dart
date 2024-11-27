import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'custom_appBar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50,),
          Text(
            "best Saller",
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
