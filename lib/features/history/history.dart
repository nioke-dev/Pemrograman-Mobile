import 'package:flutter/material.dart';
import 'package:uts/features/history/widgets/pending_page.dart';
import 'package:uts/features/history/widgets/transaction_list.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Transaction History')),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Pending'),
            Tab(text: 'Done'),
          ],
          indicatorColor: Colors.red,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const PendingPage(),
          _buildTransactionList(),
        ],
      ),
    );
  }

  Widget _buildTransactionList() {
    return const TransactionList(transactions: [
      {
        "title": "Pay Merchant",
        "amount": "Rp45.400",
        "date": "15 Sep 2024, 17:32 WIB",
        "description": "Indomaret_purchase",
        "status": "Success"
      },
      {
        "title": "Pay Merchant",
        "amount": "Rp55.000",
        "date": "15 Sep 2024, 17:28 WIB",
        "description": "Indomaret_purchase",
        "status": "Success"
      },
      {
        "title": "Top Up from Bank",
        "amount": "Rp100.000",
        "date": "15 Sep 2024, 17:26 WIB",
        "description": "Top Up from ortajasa B_001145615163862752",
        "status": "Success"
      },
      {
        "title": "Pay QRIS",
        "amount": "Rp21.000",
        "date": "31 Aug 2024, 11:49 WIB",
        "description": "SBY - MOG TP S1",
        "status": "Success"
      },
    ]);
  }
}
