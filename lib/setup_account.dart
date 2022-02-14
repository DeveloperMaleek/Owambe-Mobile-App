import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'components/buttons.dart' as button;
import 'components/inputs.dart' as input;
import '../constants/colors.dart' as color;

class SetupAccountPage extends StatefulWidget {
  const SetupAccountPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SetupAccountPage> createState() => _SetupAccountPageState();
}

class _SetupAccountPageState extends State<SetupAccountPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.accent,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Setup your account",
                style: TextStyle(
                    color: color.AppColor.blackText,
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text("Let us setup your account for you quickly",
                  style: TextStyle(
                      color: color.AppColor.blackText,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.normal)),
              const SizedBox(
                height: 20,
              ),
              input.TextInput(
                labelText: "Fullname",
                placeholder: "Enter your fullname here",
                labelTextColor: color.AppColor.blackText,
              ),
              input.TextInput(
                labelText: "Owambe Handle",
                placeholder: "@ groover",
                labelTextColor: color.AppColor.blackText,
              ),
              input.TextInput(
                labelText: "Phone number",
                placeholder: "09059784163",
                labelTextColor: color.AppColor.blackText,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  input.DateInput(
                    width: MediaQuery.of(context).size.width * 0.45,
                    iconValue: Icons.calendar_today,
                    labelText: "D.0.B",
                    labelTextColor: color.AppColor.blackText,
                    iconColor: color.AppColor.primaryColor,
                    placeholder: "DD/MM/YYYY",
                  ),
                  input.DateInput(
                    width: MediaQuery.of(context).size.width * 0.45,
                    iconValue: Icons.calendar_today,
                    labelText: "D.0.B",
                    labelTextColor: color.AppColor.blackText,
                    iconColor: color.AppColor.primaryColor,
                    placeholder: "DD/MM/YYYY",
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              button.PrimaryButton(
                buttonText: "COMPLETE SETUP",
                onPressed: () {
                  Navigator.pushNamed(context, "/dashboard");
                },
              )
            ],
          )
        ],
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
