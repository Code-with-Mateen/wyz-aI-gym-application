import 'package:flutter/material.dart';


class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  _TransactionHistoryScreenState createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  String selectedFilter = 'This month';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
       
        title: const Text('Transaction History'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedFilter,
              items: const [
                DropdownMenuItem(value: 'This month', child: Text('This month')),
                DropdownMenuItem(value: 'This week', child: Text('This week')),
                DropdownMenuItem(value: 'Today', child: Text('Today')),
              ],
              onChanged: (value) {
                setState(() {
                  selectedFilter = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const TransactionCard(
              type: 'Transfer',
              transactionId: '1295999 NUC',
              amount: '200 USD',
              additionalInfo: 'Total Fees: 3 USD',
              status: 'Failed',
              icon: Icons.arrow_upward,
            ),
            const SizedBox(height: 10),
            const TransactionCard(
              type: 'Deposit',
              transactionId: '1295999 NUC',
              amount: '200 USD',
              additionalInfo: 'Payment Gateway: JazzCash',
              status: 'Completed',
              icon: Icons.arrow_downward,
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String type;
  final String transactionId;
  final String amount;
  final String additionalInfo;
  final String status;
  final IconData icon;

  const TransactionCard({super.key, 
    required this.type,
    required this.transactionId,
    required this.amount,
    required this.additionalInfo,
    required this.status,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(icon, color: Colors.pinkAccent),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text('Transaction ID: $transactionId'),
                Text('Amount: $amount'),
                Text(additionalInfo),
                const SizedBox(height: 5),
                Text(
                  status,
                  style: TextStyle(
                    color: status == 'Completed' ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Text('1 week ago', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}