import 'package:flutter/material.dart';
import 'components/header_dashboard.dart';
import 'components/main_dashboard_view.dart';
import 'components/side_bar_widget.dart';
import 'utils/constants.dart';

class MainDashboardScreen extends StatelessWidget {
  const MainDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: sideBarColor,
              child: const SideBarWidget(),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: mainBackgroundColor,
              child: const MainDashboardView(),
            ),
          )
        ],
      ),
    );
  }
}
