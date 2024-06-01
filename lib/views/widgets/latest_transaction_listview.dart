import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani',
      subTitle: 'Madraniad12@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani',
      subTitle: 'Madraniad12@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani',
      subTitle: 'Madraniad12@gmail.com',
    ),
  ];
  @override

  /// Builds a widget that displays a list of user information tiles horizontally.
  ///
  /// This method returns a [SingleChildScrollView] widget with a horizontal [Row] containing
  /// user information tiles. Each user information tile is wrapped in an [IntrinsicWidth] widget.
  ///
  /// Alternatively, you can use the commented out code block (SizedBox with ListView.builder)
  /// to achieve the same horizontal list functionality.
  ///
  /// Parameters:
  ///   - context: The [BuildContext] for the widget.
  ///
  /// Returns:
  ///   A widget displaying user information tiles horizontally.
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
