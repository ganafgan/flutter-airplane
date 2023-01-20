import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isPassword;

  const CustomFormField({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: isPassword,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
