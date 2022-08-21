import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../widgets/profile_info.dart';

class ProfileScreen extends StatelessWidget {
const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getWidth(20)
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(88),
                height: AppLayout.getHeight(88),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/sunset_airplan.jpg'
                    )
                  )
                )
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Text(
                    'New-York',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Gap(AppLayout.getWidth(7)),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('Edit tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.headLineStyle3,
                    ),
                  )
                ],
              )
            ],
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          Gap(AppLayout.getHeight(15)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                top: -40,
                right: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    )
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(40),
                  vertical: AppLayout.getHeight(18),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 30,
                      ),
                    ),
                    Gap(AppLayout.getWidth(15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got new aword',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'You have 57 flights in a year',
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(40)),
          const Center(
            child: Text(
              '192802',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Column(
            children: [
              const ProfileInfo(
                firstText: 'Miles accrued',
                secondText: '23 May 2022',
              ),
              Gap(AppLayout.getHeight(25)),
              const ProfileInfo(
                isDark: true,
                firstText: '23 042',
                secondText: 'Airline CO',
              ),
              Gap(AppLayout.getHeight(5)),
              const ProfileInfo(
                firstText: 'Miles',
                secondText: 'Received from',
              ),
              Gap(AppLayout.getHeight(25)),
              const ProfileInfo(
                isDark: true,
                firstText: '24',
                secondText: 'McDonal\'s',
              ),
              Gap(AppLayout.getHeight(5)),
              const ProfileInfo(
                firstText: 'Miles',
                secondText: 'Received from',
              ),
              Gap(AppLayout.getHeight(25)),
              const ProfileInfo(
                isDark: true,
                firstText: '52 340',
                secondText: 'Exuma',
              ),
              Gap(AppLayout.getHeight(5)),
              const ProfileInfo(
                firstText: 'Miles',
                secondText: 'Received from',
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(8),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(50),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  print('view all tapped');
                },
                child: Text(
                  'How to get more miles',
                  style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}