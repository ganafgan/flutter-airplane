import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_formfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join  us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            const CustomFormField(
              title: 'Full Name',
              hintText: 'Your full name',
            ),
            const CustomFormField(
              title: 'Email',
              hintText: 'Your email address',
            ),
            const CustomFormField(
              title: 'Password',
              hintText: 'Your password',
              isPassword: true,
            ),
            const CustomFormField(
              title: 'Hobby',
              hintText: 'Your hobby',
            ),
            CustomButton(
              title: 'GetStarted',
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
