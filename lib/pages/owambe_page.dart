import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import '../components/navigation.dart' as menu_bar;
import '../constants/titles.dart' as text_content;


class OwambePage extends StatefulWidget {
  const OwambePage({Key? key}) : super(key: key);

  @override
  _OwambePageState createState() => _OwambePageState();
}

class _OwambePageState extends State<OwambePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.accent,
        body: Container(),
        floatingActionButton: IconButton(
          color: color.AppColor.primaryColor,
          padding: EdgeInsets.all(16),
          onPressed: () {},
          icon: Icon(
            Icons.fastfood,
            color: color.AppColor.primaryTextColor,
          ),
        ));
  }
}
