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
    return Container(
      child: Text(
        subtitle,
        style: smallBodyText,
      ),
    );
  }
}
