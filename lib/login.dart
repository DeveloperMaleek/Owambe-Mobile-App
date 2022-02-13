import 'package:flutter/material.dart';
import 'components/buttons.dart' as button;
import '../constants/colors.dart' as color;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.primaryTextColor,
      body: Container(),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
