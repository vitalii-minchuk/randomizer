import 'package:flutter/cupertino.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketsDivider extends StatelessWidget {
  const TicketsDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
      child: SizedBox(
        width: size.width * .85,
        height: 2,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Styles.bgColor,
          ),
        ),
      ),
    );
  }
}
