import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // Note: 0. available, 1. selected, 2. unavailable
  final int status;
  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          status == 1 ? 'You' : '',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold
          ),
        ),
      ),
    );
  }
}
