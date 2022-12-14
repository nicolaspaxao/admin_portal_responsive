// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management_dashboard/components/chart_details.dart';
import 'package:management_dashboard/components/section_right_item.dart';

import 'package:management_dashboard/utils/constants.dart';

import '../models/card_top_model.dart';
import 'header_dashboard.dart';
import 'overview_top_cards_list.dart';

class MainDashboardView extends StatelessWidget {
  const MainDashboardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 33, 28),
          child: HeaderDashboard(),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(30, 0, 33, 30),
            children: const [
              OverViewTopCards(),
              SizedBox(height: 30),
              ChartDetails()
            ],
          ),
        ),
      ],
    );
  }
}

