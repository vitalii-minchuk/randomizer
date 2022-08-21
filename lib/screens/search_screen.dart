import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
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
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: const Color(0xFFF4f6FD),
            ),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7)
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50)),
                    ),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text('Airline tickets'),
                  ),
                ),
                Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7)
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50)),
                    ),
                    color: Colors.grey.shade200,
                  ),
                  child: const Center(
                    child: Text('Hotels'),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(AppLayout.getHeight(15)),
          const IconTextWidget(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130Ce),
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(12),
              ),
            ),
            child: Center(
              child: Text(
                'find tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.headLineStyle2,
              ),
              InkWell(
                onTap: () {
                  print('view all tapped');
                },
                child: Text(
                  'View All',
                  style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(350),
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(12),
                  vertical: AppLayout.getHeight(12),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 3,
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(20),
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(20),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/flight.jpg'
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      '20% discount on the early booking of this flight. Don\'t miss out this chance',
                      style: Styles.headLineStyle3,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15),
                        ),
                        height: AppLayout.getHeight(170),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              blurRadius: 3,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(20)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLineStyle4.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18, color: const Color(0xFF189999)
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(12),
                      vertical: AppLayout.getHeight(12),
                    ),
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(170),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 3,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(AppLayout.getHeight(15)),
                        Center(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😮',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                TextSpan(
                                  text: '❤️',
                                  style: TextStyle(
                                    fontSize: 50,
                                  ),
                                ),
                                TextSpan(
                                  text: '🚀',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}