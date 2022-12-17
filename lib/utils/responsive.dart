// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    this.tablet,
    required this.mobile,
    required this.desktop,
    required this.width,
  }) : super(key: key);
  final Widget? tablet;
  final Widget mobile;
  final Widget desktop;
  final double width;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 728;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 728 &&
        MediaQuery.of(context).size.width < 1100;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1150;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        var size = width;
        if (size >= 1100) {
          return desktop;
        } else if ((size >= 728 && size < 1100) && tablet != null) {
          return tablet!;
        } else {
          return mobile;
        }
      }),
    );
  }
}
