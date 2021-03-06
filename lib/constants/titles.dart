import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;

class ContentTitlesNoBg extends StatelessWidget {
  const ContentTitlesNoBg({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    //Used for the titles in pages
    TextStyle bigBodyText = TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.w700,
        color: color.AppColor.blackText);

    return Container(
      child: Text(
        title,
        style: bigBodyText,
      ),
    );
  }
}

class ContentTitles extends StatelessWidget {
  const ContentTitles({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    //Used for the titles in pages
    TextStyle bigBodyText = TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.w700,
        color: color.AppColor.blackText);

    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: color.AppColor.accent,
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        title,
        style: bigBodyText,
      ),
    );
  }
}

class ContentSubtitles extends StatelessWidget {
  const ContentSubtitles({Key? key, required this.subtitle}) : super(key: key);

  final String subtitle;
  @override
  Widget build(BuildContext context) {
    //used for the subtitles in pages
    TextStyle smallBodyText = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color.AppColor.primaryTextColor);
    return Text(
      subtitle,
      style: smallBodyText,
    );
  }
}

class MeterText extends StatelessWidget {
  const MeterText({Key? key, required this.subtitle}) : super(key: key);

  final String subtitle;
  @override
  Widget build(BuildContext context) {
    //used for the subtitles in pages
    TextStyle meterText = TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: color.AppColor.primaryTextColor);
    return Text(
      subtitle,
      style: meterText,
    );
  }
}

class EventTextTitle extends StatelessWidget {
  const EventTextTitle({Key? key, required this.eventTextTitle})
      : super(key: key);

  final String eventTextTitle;
  @override
  Widget build(BuildContext context) {
    //used for the Event titles in pages
    TextStyle meterText = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color.AppColor.blackText);
    return Text(
      eventTextTitle,
      style: meterText,
    );
  }
}
