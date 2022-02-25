import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:owambe_app/components/buttons.dart' as button;
import 'package:owambe_app/constants/colors.dart' as color;
import 'package:owambe_app/pages/owambe_by_friends.dart';
import 'package:owambe_app/pages/owambe_by_you.dart';
import '../components/navigation.dart' as menu_bar;
import '../constants/titles.dart' as text_content;

class OwambePage extends StatefulWidget {
  const OwambePage({Key? key}) : super(key: key);

  @override
  _OwambePageState createState() => _OwambePageState();
}

class _OwambePageState extends State<OwambePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    OwambeByYouPage(),
    OwambeByFriends(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.accent,
        body: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              children: [
                _sectionOne(),
                _sectionTwo(),
                _widgetOptions.elementAt(_selectedIndex)
              ],
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: color.AppColor.primaryColor,
          child:
              Icon(Icons.fastfood, color: color.AppColor.lightBackgroundColor),
          onPressed: () {},
        ));
  }

  Widget _sectionTwo() {
    return GNav(
        tabMargin: EdgeInsets.fromLTRB(0, 24, 0, 24),
        mainAxisAlignment: MainAxisAlignment.center,
        tabActiveBorder: Border.all(
          color: color.AppColor.primaryColor,
          width: 2.0,
        ),
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: color.AppColor.primaryTextColor,
        iconSize: 20,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        duration: const Duration(milliseconds: 400),
        color: Colors.black,
        tabs: [
          GButton(
            icon: Icons.group,
            iconColor: color.AppColor.primaryTextColor,
            text: 'CREATED BY FRIENDS',
          ),
          GButton(
            icon: Icons.person,
            iconColor: color.AppColor.primaryTextColor,
            text: 'CREATED BY YOU',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        });
  }

  Widget _sectionOne() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
            child: text_content.ContentTitlesNoBg(title: "Your Profile"),
          )),
          button.IconTextNavigation(
            icon: Icons.voicemail,
            textLabel: "DISCOVER",
          )
        ],
      ),
    );
  }
}
