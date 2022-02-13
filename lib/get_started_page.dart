import 'package:flutter/material.dart';
import 'components/buttons.dart' as button;
import '../constants/colors.dart' as color;

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.primaryTextColor,
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            button.PrimaryButton(
              buttonText: "SIGN IN",
              onPressed: () {
                Navigator.of(context).pushNamed("/login");
              },
            ),
            const SizedBox(
              height: 10,
            ),
            button.SecondaryButton(
              buttonText: "SIGN UP",
              onPressed: () {
                Navigator.pushNamed(context, "/register");
              },
            )
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
