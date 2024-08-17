import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.buttonColor, this.textColor});
  final Color? buttonColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 0,
            backgroundColor: buttonColor ?? const Color(0xff4db7f2),
          ),
          onPressed: () {},
          child: Text(
            'Send Money',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            ),
          )),
    );
  }
}
