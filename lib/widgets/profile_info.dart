import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';

class ProfileInfo extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? isDark;
  const ProfileInfo({
    Key? key,
    required this.firstText,
    required this.secondText,
    this.isDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: isDark == null
            ? Styles.headLineStyle3
            : Styles.headLineStyle2,
        ),
        Text(
          secondText,
          style: isDark == null
            ? Styles.headLineStyle3
            : Styles.headLineStyle2,
        ),
      ],
    );
  }
}