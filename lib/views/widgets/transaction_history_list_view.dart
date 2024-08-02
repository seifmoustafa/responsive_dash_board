import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April, 2022',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 April, 2022',
        amount: r'$20,129',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 April, 2022',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
