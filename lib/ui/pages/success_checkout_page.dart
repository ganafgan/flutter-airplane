import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 300,
                margin: const EdgeInsets.only(bottom: 50),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_success.png'),
                  ),
                ),
              ),
              Text(
                'Well Booked',
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Are you ready to explore the new\nworld of experiences?',
                style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                title: 'My Bookings',
                onPressed: () {},
                width: 220,
                margin: const EdgeInsets.only(top: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
