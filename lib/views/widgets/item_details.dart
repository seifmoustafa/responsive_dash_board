import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return FittedBox(
    //   fit: BoxFit.scaleDown,
    //   child: Row(
    //     children: [
    //       Container(
    //         width: 12,
    //         height: 12,
    //         decoration: ShapeDecoration(
    //           color: itemDetailsModel.color,
    //           shape: const OvalBorder(),
    //         ),
    //       ),
    //       Text(
    //         itemDetailsModel.title,
    //         style: AppStyles.styleRegular16,
    //       ),
    //       Text(
    //         itemDetailsModel.value,
    //         style: AppStyles.styleMedium16,
    //       ),
    //     ],
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
