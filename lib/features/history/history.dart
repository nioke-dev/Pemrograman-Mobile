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
            Tab(text: 'Selesai'),
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
        "title": "Pembayaran Merchant",
        "amount": "Rp30.000",
        "date": "20 Okt 2024, 14:15 WIB",
        "description": "Pembelian di Alfamart",
        "status": "Sukses"
      },
      {
        "title": "Pembayaran Merchant",
        "amount": "Rp75.000",
        "date": "20 Okt 2024, 14:00 WIB",
        "description": "Pembelian di Indomaret",
        "status": "Sukses"
      },
      {
        "title": "Top Up Saldo",
        "amount": "Rp150.000",
        "date": "19 Okt 2024, 16:30 WIB",
        "description": "Top Up dari BCA - 123456789",
        "status": "Sukses"
      },
      {
        "title": "Pembayaran QRIS",
        "amount": "Rp50.000",
        "date": "18 Okt 2024, 10:45 WIB",
        "description": "Pembayaran di Restoran XYZ",
        "status": "Sukses"
      }
    ]);
  }
}
