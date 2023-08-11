import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_store_ui/widgets/drawer/my_drawer_header.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  List<Map> drawerItems = [
    {
      'title': 'New Arrival',
      'icon': 'assets/icons/drawer/new-arrival.svg',
    },
    {
      'title': 'Final Sale',
      'icon': 'assets/icons/drawer/final-sale.svg',
    },
  ];

  Widget menuItem(String title, String icon) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        16,
        8,
        16,
        8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            height: 24,
            width: 24,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(title),
        ],
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          for (var i = 0; i < drawerItems.length; i++)
            menuItem(drawerItems[i]['title'], drawerItems[i]['icon']),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(0)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const MyDrawerHeader(),
            myDrawerList(),
          ],
        ),
      ),
    );
  }
}
