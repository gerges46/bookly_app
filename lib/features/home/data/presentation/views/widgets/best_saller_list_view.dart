// if you use list view inside column you must give it heigh or expanded it
import 'package:flutter/material.dart';

import 'best_saller_list_view_item.dart';

class BestSallerLIstView extends StatelessWidget {
  const BestSallerLIstView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //    shrinkWrap: true,// it mean it take height of here children if you use list view inside list view inside custom scroll view
        physics:
            const NeverScrollableScrollPhysics(), //use it because custom scroll view it scroll here dont need it and it build only appear on screen but shrink wrap it build it all in one time and it effect in performance
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        });
  }
}
