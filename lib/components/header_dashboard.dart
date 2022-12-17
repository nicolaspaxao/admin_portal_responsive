import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import '../utils/responsive.dart';

class HeaderDashboard extends StatelessWidget {
  const HeaderDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!ResponsiveWidget.isDesktop(context))
          IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu, color: borderCardsColor),
          ),
        const Expanded(
          child: AutoSizeText(
            'Overview',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            minFontSize: 16,
            maxLines: 1,
          ),
        ),
        if (!ResponsiveWidget.isMobile(context)) const ActionHeader(),
        const SizedBox(width: 32),
        Container(
          height: 32,
          width: 1,
          color: borderCardsColor,
        ),
        const SizedBox(width: 32),
        if (!ResponsiveWidget.isMobile(context)) ...[
          const Text(
            'Jones Ferdinand',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 14),
        ],
        const ProfileImage()
      ],
    );
  }
}

class ActionHeader extends StatelessWidget {
  const ActionHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMobile(context)) {
      return Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset('assets/icons/search.svg'),
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset('assets/icons/new.svg'),
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          const SizedBox(width: 24),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/new.svg'),
          ),
        ],
      );
    }
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
          border: Border.all(width: 1, color: borderCardsColor),
          borderRadius: BorderRadius.circular(500)),
      child: CircleAvatar(
        child: ClipOval(
          child: Image.asset('assets/images/profile_image.png'),
        ),
      ),
    );
  }
}
