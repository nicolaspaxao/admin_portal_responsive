import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';
import '../utils/responsive.dart';
import 'header_dashboard.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HeaderSideBar(),
        if (ResponsiveWidget.isMobile(context)) ...[
          const Padding(
            padding: EdgeInsets.only(left: 32),
            child: ActionHeader(),
          ),
          Divider(
            color: hoverColor.withOpacity(0.1),
          ),
        ],
        SideBarTile(
          icon: 'assets/icons/overview.svg',
          title: 'Overview',
          onPressed: () {},
        ),
        SideBarTile(
          icon: 'assets/icons/tickets.svg',
          title: 'Tickets',
          onPressed: () {},
        ),
        SideBarTile(
          icon: 'assets/icons/ideas.svg',
          title: 'Ideas',
          onPressed: () {},
        ),
        SideBarTile(
          icon: 'assets/icons/contacts.svg',
          title: 'Contacts',
          onPressed: () {},
        ),
        SideBarTile(
          icon: 'assets/icons/agents.svg',
          title: 'Agents',
          onPressed: () {},
        ),
        SideBarTile(
          icon: 'assets/icons/articles.svg',
          title: 'Articles',
          onPressed: () {},
        ),
        Divider(
          color: hoverColor.withOpacity(0.1),
        ),
        SideBarTile(
          icon: 'assets/icons/settings.svg',
          title: 'Settings',
          onPressed: () {},
        ),
        SideBarTile(
          icon: 'assets/icons/subscription.svg',
          title: 'Subscription',
          onPressed: () {},
        ),
      ],
    );
  }
}

class SideBarTile extends StatefulWidget {
  const SideBarTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String icon;
  final String title;
  final VoidCallback onPressed;

  @override
  State<SideBarTile> createState() => _SideBarTileState();
}

class _SideBarTileState extends State<SideBarTile> {
  bool isHoverColor = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHoverColor = !isHoverColor;
        });
      },
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: isHoverColor ? 29 : 32),
        width: double.infinity,
        decoration: BoxDecoration(
            color: isHoverColor ? hoverColor.withOpacity(0.1) : null,
            border: isHoverColor
                ? const Border(
                    left: BorderSide(
                      width: 3,
                      color: hoverColor,
                    ),
                  )
                : null),
        height: 56,
        child: Row(
          children: [
            SvgPicture.asset(
              widget.icon,
              theme: SvgTheme(
                currentColor: isHoverColor ? hoverColor : secondaryTextColor,
              ),
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: isHoverColor ? hoverColor : secondaryTextColor,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderSideBar extends StatelessWidget {
  const HeaderSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 37, 0, 59),
      child: Row(
        children: [
          SizedBox(
              width: 32,
              height: 32,
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                fit: BoxFit.fitWidth,
              )),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Dashboard Kit',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: secondaryTextColor,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
  }
}
