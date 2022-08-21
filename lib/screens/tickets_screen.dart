import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/ticket_view.dart';
import 'package:flutter_application_2/utils/app_info_list.dart';
import 'package:flutter_application_2/widgets/thick_container.dart';
import 'package:flutter_application_2/widgets/tickets_divider.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'Tickets',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4f6FD),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text('Upcoming'),
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.grey.shade200,
                    ),
                    child: const Center(
                      child: Text('Previous'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LDN',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(15)),
                          Text(
                            'London',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(children: [
                        Row(
                          children: [
                            const ThickContainer(isTicketsScreen: true),
                            Stack(
                              children: [
                                SizedBox(
                                  height: AppLayout.getHeight(24),
                                  width: size.width * 0.25,
                                  child: LayoutBuilder(builder:
                                      (BuildContext context,
                                          BoxConstraints constraints) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppLayout.getWidth(4)),
                                      child: Flex(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        direction: Axis.horizontal,
                                        children: List.generate(
                                            (constraints.constrainWidth() / 12)
                                                .floor(),
                                            (index) => const SizedBox(
                                                  width: 3,
                                                  height: 2,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF8ACCF7),
                                                    ),
                                                  ),
                                                )),
                                      ),
                                    );
                                  }),
                                ),
                                Positioned.fill(
                                  child: Transform.rotate(
                                      angle: 1.5,
                                      child: const Icon(
                                        Icons.local_airport_rounded,
                                        color: Color(0xFF8ACCF7),
                                      )),
                                ),
                              ],
                            ),
                            const ThickContainer(isTicketsScreen: true),
                          ],
                        ),
                        Gap(AppLayout.getHeight(8)),
                        Text(
                          '8H 30M',
                          style: Styles.headLineStyle3,
                        )
                      ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'NYK',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(15)),
                          Text(
                            'New-York',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(10),
                        height: AppLayout.getHeight(20),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Styles.bgColor,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(AppLayout.getHeight(12)),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 25).floor(),
                                  (index) => SizedBox(
                                        width: 8,
                                        height: 2,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Styles.bgColor,
                                          ),
                                        ),
                                      )),
                            );
                          },
                        ),
                      )),
                      SizedBox(
                        width: AppLayout.getWidth(10),
                        height: AppLayout.getHeight(20),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Styles.bgColor,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 MAY',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Date',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '08:00 AM',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Number',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const TicketsDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FlutterDB',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Passenger',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '5224875634987',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Passport',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const TicketsDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '364738 34652877663',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Number of E-ticket',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'B2SG28',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Booking code',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const TicketsDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: AppLayout.getWidth(48),
                                height: AppLayout.getHeight(20),
                                decoration: const  BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/VISA.jpg'
                                    )
                                  )
                                ),
                              ),
                              Text(
                                ' *** 7663',
                                style: Styles.headLineStyle3.copyWith(
                                  color: Styles.textColor,
                                )
                              ),
                            ],
                          ),

                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Payment method',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$249.99',
                            style: Styles.headLineStyle3.copyWith(
                              color: Styles.textColor,
                            )
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Price',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const TicketsDivider(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          TicketView(ticket: ticketList[0])
        ],
      ),
    );
  }
}
