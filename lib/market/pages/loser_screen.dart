import 'package:flutter/material.dart';

class LoserScreen extends StatelessWidget {
  const LoserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        _InfoCard(title: 'Top Losers', subtitle: 'Coins that dropped the most'),
        SizedBox(height: 12.0),
        _InfoCard(title: 'DOGE', subtitle: '-2.81% change'),
        SizedBox(height: 12.0),
        _InfoCard(title: 'XRP', subtitle: '-1.92% change'),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4.0),
          Text(subtitle, style: TextStyle(color: Colors.grey[700])),
        ],
      ),
    );
  }
}
