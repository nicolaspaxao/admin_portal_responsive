import 'package:flutter/material.dart';
import 'package:management_dashboard/utils/responsive.dart';
import 'components/header_dashboard.dart';
import 'components/main_dashboard_view.dart';
import 'components/side_bar_widget.dart';
import 'utils/constants.dart';

class MainDashboardScreen extends StatelessWidget {
  const MainDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(color: sideBarColor, child: SideBarWidget()),
      ),
      body: Row(
        children: [
          if (ResponsiveWidget.isDesktop(context))
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
              child: MainDashboardView(),
            ),
          )
        ],
      ),
    );
  }
}
