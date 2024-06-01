import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class QuikInvoice extends StatelessWidget {
  const QuikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuikInvoiceHeader(),
        LatestTransaction(),
      ],
    ));
  }
}
