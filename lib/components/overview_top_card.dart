import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:management_dashboard/utils/constants.dart';

class OverviewTopCard extends StatelessWidget {
  const OverviewTopCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: borderCardsColor),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: AutoSizeText(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    color: secondaryTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  minFontSize: 8,
                  maxLines: 1,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: AutoSizeText(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 40,
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  minFontSize: 20,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
