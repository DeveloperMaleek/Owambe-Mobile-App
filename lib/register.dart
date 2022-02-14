import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'components/buttons.dart' as button;
import 'components/inputs.dart' as input;
import '../constants/colors.dart' as color;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.accent,
      body: Column(children: [
        Expanded(child: Container()),
        Form(
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
                color: color.AppColor.primaryTextColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            padding: const EdgeInsets.fromLTRB(16, 36, 16, 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                input.TextInput(
                  labelText: "Email address",
                  placeholder: "johndoe@example.com",
                  labelTextColor: color.AppColor.accent,
                ),
                input.PasswordInput(
                  iconColor: color.AppColor.grayWhiteColor,
                  labelText: "Password",
                  placeholder: "Click on the eye icon to see me",
                  validator: () {},
                  labelTextColor: color.AppColor.accent,
                ),
                input.PasswordInput(
                  iconColor: color.AppColor.grayWhiteColor,
                  labelText: "Confirm Password",
                  placeholder: "Click on the eye icon to see me",
                  validator: () {},
                  labelTextColor: color.AppColor.accent,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    button.PrimaryButton(
                      buttonText: "CREATE AN ACCOUNT",
                      onPressed: () {
                        Navigator.pushNamed(context, "/setup account");
                      },
                    ),
                    const SizedBox(height: 8),
                    RichText(
                      text: TextSpan(
                          text: "Been here before? ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                              color: color.AppColor.accent),
                          children: <TextSpan>[
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed("/login");
                                  },
                                text: "Sign In",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontWeight: FontWeight.w600,
                                    color: color.AppColor.accent))
                          ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
