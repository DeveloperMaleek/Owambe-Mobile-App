import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart' as color;

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.labelText,
    required this.placeholder,
    required this.labelTextColor,
  }) : super(key: key);

  final String labelText;
  final String placeholder;
  final Color labelTextColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  BorderSide(color: color.AppColor.primaryColor, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  BorderSide(color: color.AppColor.primaryColor, width: 2)),
          labelText: labelText,
          labelStyle: TextStyle(
              color: labelTextColor,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.w600),
          hintText: placeholder,
          hintStyle: TextStyle(
              color: color.AppColor.subtitleTextColor,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.w600),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.labelText,
    required this.placeholder,
    required this.validator,
    required this.labelTextColor,
    required this.iconColor,
  }) : super(key: key);

  final String labelText;
  final String placeholder;
  final Function() validator;
  final Color labelTextColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: iconColor,
            size: MediaQuery.of(context).size.width * 0.04,
          ),
          contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  BorderSide(color: color.AppColor.primaryColor, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  BorderSide(color: color.AppColor.primaryColor, width: 2)),
          labelText: labelText,
          labelStyle: TextStyle(
              color: labelTextColor,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.w600),
          hintText: placeholder,
          hintStyle: TextStyle(
              color: color.AppColor.subtitleTextColor,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.w600),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
