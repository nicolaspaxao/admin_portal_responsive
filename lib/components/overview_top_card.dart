
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
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: borderCardsColor),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                color: secondaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 40,
                color: primaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
