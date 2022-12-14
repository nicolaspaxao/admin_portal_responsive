
import 'package:flutter/material.dart';
import 'package:management_dashboard/components/overview_top_card.dart';

import '../models/card_top_model.dart';

class OverViewTopCards extends StatelessWidget {
  const OverViewTopCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: ((context, index) {
          return OverviewTopCard(
            title: listCardTop[index].title!,
            subtitle: listCardTop[index].subtitle!,
          );
        }),
      ),
    );
  }
}
