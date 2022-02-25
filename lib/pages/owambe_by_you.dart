import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import 'package:owambe_app/constants/titles.dart' as content_text;

class OwambeByYouPage extends StatefulWidget {
  const OwambeByYouPage({Key? key}) : super(key: key);

  @override
  _OwambeByYouPageState createState() => _OwambeByYouPageState();
}

class _OwambeByYouPageState extends State<OwambeByYouPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: itemBuilder);
  }
}
