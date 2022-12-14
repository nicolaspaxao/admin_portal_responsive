
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';

class HeaderDashboard extends StatelessWidget {
  const HeaderDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Overview',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/icons/search.svg'),
        ),
        const SizedBox(width: 24),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/icons/new.svg'),
        ),
        const SizedBox(width: 32),
        Container(
          height: 32,
          width: 1,
          color: borderCardsColor,
        ),
        const SizedBox(width: 32),
        const Text(
          'Jones Ferdinand',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 14),
        ProfileImage()
      ],
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: borderCardsColor),
          borderRadius: BorderRadius.circular(
            500,
          )),
      child: CircleAvatar(
        child: ClipOval(
          child:
              Image.asset('assets/images/profile_image.png'),
        ),
      ),
    );
  }
}
