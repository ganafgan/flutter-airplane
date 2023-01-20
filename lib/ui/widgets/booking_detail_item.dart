import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const BookingDetailsItem({
    super.key,
    required this.title,
    required this.value,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(),
          ),
          const Spacer(),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: color
            ),
          )
        ],
      ),
    );
  }
}
