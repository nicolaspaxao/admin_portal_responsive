import 'package:flutter/material.dart';
import 'package:management_dashboard/utils/responsive.dart';

import '../models/card_top_model.dart';
import 'section_right_item.dart';

class SideSectionLeft extends StatelessWidget {
  SideSectionLeft({
    Key? key,
  }) : super(key: key);
  final ScrollController _scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMobile(context)) {
      return Scrollbar(
        controller: _scroll,
        child: ListView(
          controller: _scroll,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: listSectionRight
              .map(
                (e) => SizedBox(
                  height: 50,
                  width: 200,
                  child: SectionLeftItens(
                    title: e.title!,
                    subTitle: e.subtitle!,
                  ),
                ),
              )
              .toList(),
        ),
      );
    } else {
      return Column(
        children: listSectionRight
            .map(
              (e) => Expanded(
                child: SectionLeftItens(
                  title: e.title!,
                  subTitle: e.subtitle!,
                ),
              ),
            )
            .toList(),
      );
    }
  }
}
