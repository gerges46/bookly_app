import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'best_saller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // customScrollView use to make neasted scroll to make all screen scroll
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "best Saller",
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
               
              ],
            ),),
            // fill the last sized in screen and it expanded by defalult this use it insted of shrinkwrap in listview 
        SliverFillRemaining(// this dont make you use shrink weap
          // if you use listview here it must n't be expanded 
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSallerLIstView(),
          ),
        ),
      ],
    );
  }
}
