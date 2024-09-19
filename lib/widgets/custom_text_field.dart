import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, 
  this.controller,
   this.maLine, 
  required this.hintText,
  });
  final TextEditingController? controller;
  final int ?maLine;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maLine,
      style: TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColor.whiteSecondary,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText: hintText,
          hintStyle: TextStyle(color: CustomColor.hintDark)),
    );
  }
}

OutlineInputBorder get getInputBorder {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none);
}
