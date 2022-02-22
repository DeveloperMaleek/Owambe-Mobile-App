import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import 'components/navigation.dart' as menu_bar;
import 'constants/titles.dart' as text_content;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  //declare variables for the textstyles
  var bigBodyText;
  var smallBodyText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.accent,
      body: ListView(
        children: [
          _sectionOne(),
          _sectionTwo(),
        ],
      ),
      // bottomNavigationBar: const menu_bar.BottomNavigation(),
    );
  }

  Widget _sectionTwo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: color.AppColor.lightBackgroundColor,
            borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const text_content.ContentTitles(title: "Your Next Owambe"),
            Container(
              margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  menu_bar.IconTextNavigation(
                    icon: Icons.date_range,
                    textLabel: "THURSDAY, 24/02/2022",
                  ),
                  menu_bar.IconTextNavigation(
                    icon: Icons.access_time,
                    textLabel: "12:00 PM",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _sectionOne() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: text_content.ContentTitlesNoBg(
                    title: "Howdy! Party Rocker"),
              ),
              text_content.ContentSubtitles(
                  subtitle: "Ooin! You're doing well.")
            ],
          )),
          const menu_bar.IconTextNavigation(
            icon: Icons.message,
            textLabel: "CHAT",
          )
        ],
      ),
    );
  }
}
