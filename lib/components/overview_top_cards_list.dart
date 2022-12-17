import 'package:flutter/material.dart';

import 'package:management_dashboard/components/overview_top_card.dart';

import '../models/card_top_model.dart';

class OverViewTopCards extends StatelessWidget {
  const OverViewTopCards({
    Key? key,
    required this.crossAxisCount,
    required this.childAspectRatio,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: listCardTop.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
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


class OverViewTopCardMobile extends StatelessWidget {
  OverViewTopCardMobile({
    Key? key,
  }) : super(key: key);

  final ScrollController _scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scroll,
      child: Container(
        padding: const EdgeInsets.only(bottom: 12),
        height: 120,
        child: ListView.builder(
          controller: _scroll,
          itemCount: listCardTop.length,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            width: 200,
            child: OverviewTopCard(
                title: listCardTop[index].title!,
                subtitle: listCardTop[index].subtitle!),
          ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
