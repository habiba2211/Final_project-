import 'package:final_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String txt;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? textInputType;
  final String? warningMessage;
  final bool required;

  // static GlobalKey<FormState> formState=GlobalKey<FormState>();

  const TextFieldItem({
    Key? key,
    required this.txt,
    required this.controller,
    required this.obscureText,
    required this.textInputType,
    this.warningMessage,
    this.required = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: !required
            ? null
            : (value) {
                if (value!.isEmpty || value == '') {
                  return (warningMessage!);
                } else {
                  return null;
                }
              },
        cursorColor: AppColors.mainColor,
        obscureText: obscureText,
        keyboardType: textInputType,
        controller: controller,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          labelText: txt,
          labelStyle: TextStyle(
            color: AppColors.mainColor,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.mainColor,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.mainColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.mainColor,
            ),
          ),
        ));
  }
}
