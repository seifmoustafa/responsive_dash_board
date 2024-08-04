import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: Color(0xff208bc7),
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        'Design service',
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        '40%',
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
