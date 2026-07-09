import 'package:flutter/material.dart';
import 'package:z_coin/market/pages/market_coin_card.dart';

class LoserScreen extends StatelessWidget {
  const LoserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        MarketCoinCard(
          name: 'Cardano',
          symbol: 'ADA',
          price: '₹9.36',
          change: '-2.81%',
          imagePath: 'assets/images/a55046bc53c5de686bf82a2d9d280b006bd8d2aa1f3bbb4eba28f0c69c7597da 1.png',
          chartPath: 'assets/images/Vector 4.png',
          isPositive: false,
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Tether',
          symbol: 'USDT',
          price: '₹44.12',
          change: '-1.92%',
          imagePath: 'assets/images/1f8489bb280fb0a0fd643c1161312ba49655040e9aaaced5f9ad3eeaf868eadc 1.png',
          chartPath: 'assets/images/Vector 4.png',
          isPositive: false,
        ),
      ],
    );
  }
}
