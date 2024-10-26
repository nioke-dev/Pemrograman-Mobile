import 'package:flutter/material.dart';
import 'package:uts/features/history/widgets/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Map<String, String>> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return TransactionCard(transaction: transaction);
      },
    );
  }
}
