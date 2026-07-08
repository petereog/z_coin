import 'package:flutter/material.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        _MarketTile(name: 'Bitcoin', symbol: 'BTC', change: '+2.48%'),
        SizedBox(height: 12.0),
        _MarketTile(name: 'Ethereum', symbol: 'ETH', change: '+1.14%'),
        SizedBox(height: 12.0),
        _MarketTile(name: 'Solana', symbol: 'SOL', change: '+4.02%'),
      ],
    );
  }
}

class _MarketTile extends StatelessWidget {
  const _MarketTile({
    required this.name,
    required this.symbol,
    required this.change,
  });

  final String name;
  final String symbol;
  final String change;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue.withValues(alpha: 0.15),
            child: Text(symbol.substring(0, 1)),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(symbol, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
          Text(
            change,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
