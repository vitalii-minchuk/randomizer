import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
const TicketView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
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
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white
                        ),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: SizedBox(
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              direction: Axis.horizontal,
                              children: List.generate(
                                (constraints.constrainWidth()/12).floor(), (index) => const Text(
                                  '-',
                                )
                              ),
                            );
                          }),
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        'London',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white
                        ),
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