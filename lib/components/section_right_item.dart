import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SectionLeftItens extends StatelessWidget {
  const SectionLeftItens({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: borderCardsColor, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: secondaryTextColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 24,
              color: primaryTextColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ));
  }
}
