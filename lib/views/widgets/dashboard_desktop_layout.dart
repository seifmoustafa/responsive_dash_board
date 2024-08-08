import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        // Expanded(
        //   child: MyCardsPageView(),
        // )
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            MyCardsAndTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: IncomeSection())
          ],
        ))
      ],
    );
  }
}
