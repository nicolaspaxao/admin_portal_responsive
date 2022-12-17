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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 0.25, color: borderCardsColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: secondaryTextColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              subTitle,
              style: const TextStyle(
                fontSize: 24,
                color: primaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
