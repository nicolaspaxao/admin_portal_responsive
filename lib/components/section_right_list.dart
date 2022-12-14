

import 'package:flutter/material.dart';

import '../models/card_top_model.dart';
import '../utils/constants.dart';
import 'section_right_item.dart';

class SideSectionLeft extends StatelessWidget {
  const SideSectionLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        left: BorderSide(width: 1, color: borderCardsColor),
      )),
      child: Column(
        children: listSectionRight
            .map(
              (e) => SectionLeftItens(
                title: e.title!,
                subTitle: e.subtitle!,
              ),
            )
            .toList(),
      ),
    );
  }
}
