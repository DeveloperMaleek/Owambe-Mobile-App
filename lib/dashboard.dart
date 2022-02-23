import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import 'components/navigation.dart' as menu_bar;
import 'constants/titles.dart' as text_content;
import '../components/meters.dart' as meter;
import '../components/owambe_snippet.dart' as owambe_snippet;

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
          _sectionThree(),
          _sectionFour()
        ],
      ),
      bottomNavigationBar: const menu_bar.BottomNavigation(),
    );
  }

  Widget _sectionFour() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: color.AppColor.lightBackgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const text_content.ContentTitles(
              title: "Owambe Your Friends Are Attending"),
          owambe_snippet.OwambeSnippet(),
        ],
      ),
    );
  }

  Widget _sectionThree() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 16),
      child: Container(
        decoration: BoxDecoration(
            color: color.AppColor.lightBackgroundColor,
            borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const text_content.ContentTitles(title: "Owambe Meter"),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: meter.OwambeMeter())
          ],
        ),
      ),
    );
  }

  Widget _sectionTwo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
      child: Container(
        decoration: BoxDecoration(
            color: color.AppColor.lightBackgroundColor,
            borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(12),
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
      padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
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
