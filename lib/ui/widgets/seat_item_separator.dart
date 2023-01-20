import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItemSeparator extends StatelessWidget {
  final int number;
  const SeatItemSeparator({
    super.key,
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      child: Center(
        child: Text(number.toString(), style: greyTextStyle,),
      ),
    );
  }
}
