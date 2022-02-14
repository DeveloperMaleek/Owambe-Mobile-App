import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart' as color;

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, right: 16, left: 16),
          primary: color.AppColor.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPrimary: color.AppColor.accent,
          textStyle: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: OutlinedButton.styleFrom(
          elevation: 0,
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, right: 16, left: 16),
          primary: color.AppColor.primaryColor,
          side: BorderSide(color: color.AppColor.primaryColor, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  const IconButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: OutlinedButton.styleFrom(
          elevation: 0,
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, right: 16, left: 16),
          primary: color.AppColor.primaryColor,
          side: BorderSide(color: color.AppColor.primaryColor, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
