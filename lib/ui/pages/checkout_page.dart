import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout_page.dart';
import 'package:airplane/ui/widgets/booking_detail_item.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget routeHeader() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 290,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png'),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CGK',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Tanggerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'TLC',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Ciliwung',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Destination Tile
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tanggerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'),
                        ),
                      ),
                    ),
                    Text(
                      '4.5',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Booking Details
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),

            // Booking Details Item
            BookingDetailsItem(
              title: 'Traveler',
              value: '2 Person',
              color: kBlackColor,
            ),
            BookingDetailsItem(
              title: 'Seat',
              value: 'A3, B3',
              color: kBlackColor,
            ),
            BookingDetailsItem(
              title: 'Insurance',
              value: 'Yes',
              color: kGreencolor,
            ),
            BookingDetailsItem(
              title: 'Refundable',
              value: 'No',
              color: kRedColor,
            ),
            BookingDetailsItem(
              title: 'VAT',
              value: '45%',
              color: kBlackColor,
            ),
            BookingDetailsItem(
              title: 'Price',
              value: 'IDR 8.500.000',
              color: kBlackColor,
            ),
            BookingDetailsItem(
              title: 'Grand Total',
              value: 'IDR 10.500.000',
              color: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 100,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          image: AssetImage('assets/image_card.png'),
                          fit: BoxFit.cover)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'),
                        )),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 8.500.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget payButton() {
      return CustomButton(
        title: 'Pay',
        margin: const EdgeInsets.only(top: 30),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessCheckoutPage(),
            ),
          );
        },
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          routeHeader(),
          bookingDetails(),
          paymentDetails(),
          payButton(),
          tacButton(),
        ],
      )),
    );
  }
}
