import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:airplane/ui/widgets/seat_item_separator.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 6),
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'),
                    ),
                  ),
                ),
                Text(
                  'Available',
                  style: blackTextStyle,
                ),
              ],
            ),
            // Available
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 6),
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'),
                    ),
                  ),
                ),
                Text(
                  'Selected',
                  style: blackTextStyle,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 6),
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'),
                    ),
                  ),
                ),
                Text(
                  'Unavailable',
                  style: blackTextStyle,
                )
              ],
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Row(
              // Seat Indicator
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      ' ',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Seat 1
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 0),
                  SeatItemSeparator(number: 1),
                  SeatItem(status: 1),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // Seat 2
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 0),
                  SeatItemSeparator(number: 2),
                  SeatItem(status: 1),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // Seat 3
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 0),
                  SeatItemSeparator(number: 3),
                  SeatItem(status: 1),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // Seat 4
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 0),
                  SeatItemSeparator(number: 4),
                  SeatItem(status: 1),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // Seat 5
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 0),
                  SeatItemSeparator(number: 5),
                  SeatItem(status: 1),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // Your Seat
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),

            // Price
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'Rp 500.000',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 40,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [title(), seatStatus(), selectSeat(), checkoutButton()],
        ),
      ),
    );
  }
}
