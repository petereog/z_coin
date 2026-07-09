import 'package:flutter/material.dart';
import 'package:z_coin/market/pages/market_coin_card.dart';

class GainerScreen extends StatelessWidget {
  const GainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        MarketCoinCard(
          name: 'Band protocol',
          symbol: 'Band',
          price: '₹8,420.34',
          change: '+4.02%',
          imagePath: 'assets/images/5014e5a26a574b1a9a32e6d7ccfe8ab106e0c989dfca6aac1c469debbc772730 1.png',
          chartPath: 'assets/images/Vector 2.png',
          isPositive: true,
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Tron',
          symbol: 'TRX',
          price: '₹3,142.88',
          change: '+3.67%',
          imagePath: 'assets/images/3c5b36c70a05bad40eee4f711aeefbb1809169a17db047bf91f1ef45828349e5 1.png',
          chartPath: 'assets/images/Vector 2.png',
          isPositive: true,
        ),
      ],
    );
  }
}
