import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:owambe_app/constants/colors.dart' as color;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: GNav(
            tabBackgroundColor: color.AppColor.lightBackgroundColor,
            tabActiveBorder: Border.all(
              color: color.AppColor.primaryColor,
              width: 2.0,
            ),
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: color.AppColor.primaryTextColor,
            iconSize: 20,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            duration: Duration(milliseconds: 400),
            // tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.streetview,
                iconColor: color.AppColor.primaryTextColor,
                text: 'HOME',
              ),
              GButton(
                icon: Icons.fastfood,
                iconColor: color.AppColor.primaryTextColor,
                text: 'OWAMBE',
              ),
              GButton(
                icon: Icons.burst_mode,
                iconColor: color.AppColor.primaryTextColor,
                text: 'MEMORIES',
              ),
              GButton(
                icon: Icons.person,
                iconColor: color.AppColor.primaryTextColor,
                text: 'PROFILE',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

//Component for the Icon and Text Wrapped in a border
class IconTextNavigation extends StatelessWidget {
  const IconTextNavigation(
      {Key? key, required this.textLabel, required this.icon})
      : super(key: key);
  final String textLabel;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: color.AppColor.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: color.AppColor.iconBg,
              borderRadius: BorderRadius.circular(8)),
          child: Icon(
            icon,
            size: 18,
            color: color.AppColor.primaryTextColor,
          ),
        ),
        Text(
          textLabel,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * 0.035,
              color: color.AppColor.primaryTextColor),
        )
      ]),
    );
  }
}
