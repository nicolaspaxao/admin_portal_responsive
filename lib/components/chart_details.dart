import 'package:flutter/material.dart';
import 'package:management_dashboard/components/main_dashboard_view.dart';
import 'package:management_dashboard/components/section_right_list.dart';
import 'package:management_dashboard/components/subtitle_informations_chart.dart';
import 'package:management_dashboard/utils/responsive.dart';

import '../utils/constants.dart';
import 'chart_custom.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 546,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: borderCardsColor),
        color: Colors.white,
      ),
      child: ResponsiveWidget.isMobile(context)
          ? Column(
              children: [
                const Expanded(
                  flex: 6,
                  child: ChartMainSide(),
                ),
                Expanded(
                  flex: 1,
                  child: SideSectionLeft(),
                ),
              ],
            )
          : Row(children: [
              const Expanded(
                flex: 7,
                child: ChartMainSide(),
              ),
              Expanded(
                flex: 3,
                child: SideSectionLeft(),
              )
            ]),
    );
  }
}

class ChartMainSide extends StatelessWidget {
  const ChartMainSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Today\'s trends',
            style: TextStyle(
              fontSize: 19,
              color: primaryTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          SubtitleInformationsChart(),
          Expanded(child: ChartCustom())
        ],
      ),
    );
  }
}
