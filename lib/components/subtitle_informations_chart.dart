// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SubtitleInformationsChart extends StatelessWidget {
  const SubtitleInformationsChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'as of 25 May 2019, 09:41 PM',
          style: TextStyle(
            fontSize: 12,
            color: secondaryTextColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        TopicInfo(
          info: 'Today',
          color: mainBlueColor,
        ),
        SizedBox(width: 32),
        TopicInfo(
          info: 'Yesterday',
          color: secondaryTextColor,
        ),
      ],
    );
  }
}

class TopicInfo extends StatelessWidget {
  const TopicInfo({
    Key? key,
    required this.color,
    required this.info,
  }) : super(key: key);
  final Color color;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 16,
          height: 1,
          color: color,
        ),
        const SizedBox(width: 8),
        Text(
          info,
          style: const TextStyle(
            fontSize: 12,
            color: secondaryTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
