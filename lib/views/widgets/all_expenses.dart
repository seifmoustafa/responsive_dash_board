import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: const Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),
            AllExpensesItem(
                itemModel: AllExpensesItemModel(
                    image: Assets.imagesIncome,
                    title: 'Income',
                    date: 'April 2022',
                    price: r'$20,129'))
          ],
        ),
      ),
    );
  }
}
