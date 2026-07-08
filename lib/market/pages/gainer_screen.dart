import 'package:flutter/material.dart';

class GainerScreen extends StatelessWidget {
  const GainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        _InfoCard(title: 'Top Gainers', subtitle: 'Most rising coins today'),
        SizedBox(height: 12.0),
        _InfoCard(title: 'SOL', subtitle: '+4.02% gain'),
        SizedBox(height: 12.0),
        _InfoCard(title: 'AVAX', subtitle: '+3.67% gain'),
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
        color: Colors.green[50],
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
