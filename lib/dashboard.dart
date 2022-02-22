import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import 'components/navigation.dart' as menuBar;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.iconBg,
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text("Howdy! Party Rocker"),
                  Text("Ooin! You're doing well.")
                ],
              )), 
            ],
          )
        ],
      ),
      bottomNavigationBar: menuBar.BottomNavigation(),
    );
  }
}
