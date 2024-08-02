import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}
