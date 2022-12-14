import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    this.tablet,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);
  final Widget? tablet;
  final Widget mobile;
  final Widget desktop;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        var size = constraints.maxWidth;
        if (size >= 1100) {
          return desktop;
        } else if (size >= 850 && tablet != null) {
          return tablet!;
        } else {
          return mobile;
        }
      }),
    );
  }
}
