import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItem});
  final DrawerItemModel drawerItem;
  @override

  /// Builds a ListTile widget for the drawer.
  ///
  /// The ListTile widget displays an image and a title.
  /// The image is loaded from the given [drawerItem.image] path using the SvgPicture.asset() method.
  /// The title is displayed using the [drawerItem.title] string.
  /// The title is styled using the [AppStyles.styleMedium16] text style.
  ///
  /// Parameters:
  ///   - [context]: The build context.
  ///
  /// Returns:
  ///   The built ListTile widget.
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(
        drawerItem.title,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
