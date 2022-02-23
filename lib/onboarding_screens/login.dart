import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../components/buttons.dart' as button;
import '../../constants/colors.dart' as color;
import '../components/inputs.dart' as input;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.primaryTextColor,
      body: Column(children: [
        Expanded(child: Container()),
        Form(
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
                color: color.AppColor.accent,
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
                  labelTextColor: color.AppColor.blackText,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    input.PasswordInput(
                      iconColor: color.AppColor.grayBlackColor,
                      labelText: "Password",
                      placeholder: "Click on the eye icon to see me",
                      validator: () {},
                      labelTextColor: color.AppColor.blackText,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: color.AppColor.blackText,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    button.PrimaryButton(
                      buttonText: "SIGN IN",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 8),
                    RichText(
                      text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                              color: color.AppColor.blackText),
                          children: <TextSpan>[
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context)
                                        .pushNamed("/register");
                                  },
                                text: "Sign Up",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontWeight: FontWeight.w600,
                                    color: color.AppColor.blackText))
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
