import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
final Map<String, dynamic> ticket;
const TicketView({ Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21)
                )
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${ticket['from']['code']}',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white
                        ),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(4)),
                                    child: Flex(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        direction: Axis.horizontal,
                                        children: List.generate(
                                          (constraints.constrainWidth()/8).floor(), (index) => const SizedBox(
                                            width: 3,
                                            height: 2,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ),
                                      ),
                                  );
                                }
                              ),
                            ),
                            Center(
                              child: Transform.rotate(angle: 1.5, child: const Icon(
                                Icons.local_airport_rounded, color: Colors.white
                              )),
                            ),
                          ],
                        )
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        '${ticket['to']['code']}',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['from']['name']}',
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${ticket['flying_time']}',
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['to']['name']}',
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth()/25).floor(),
                              (index) => const SizedBox(
                                width: 8,height: 2,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                ),
                              ),
                            )
                          ),
                        );
                      },
                    ),
                  )
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)
                )
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${ticket['date']}',
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            'Date',
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${ticket['departure_time']}',
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${ticket['number']}',
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            'Number',
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}