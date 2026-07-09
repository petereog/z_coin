import 'package:flutter/material.dart';
import 'package:z_coin/market/pages/market_coin_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        MarketCoinCard(
          name: 'Bitcoin',
          symbol: 'BTC',
          price: '₹2,509.76',
          change: '+9.77%',
          imagePath: 'assets/images/b57ac673f06a4b0338a596817eb0a50ce16e2059f327dc117744449a47915cb2 1.png',
          chartPath: 'assets/images/Vector 2.png',
          isPositive: true,
          trailingIcon: Icon(Icons.star, color: Colors.amber, size: 18),
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Ethereum',
          symbol: 'ETH',
          price: '₹1,640.20',
          change: '-2.10%',
          imagePath: 'assets/images/4113b082d21cc5fab17fc8f2d19fb996165bcce635e6900f7fc2d57c4ef33ae9 1.png',
          chartPath: 'assets/images/Vector 4.png',
          isPositive: false,
          trailingIcon: Icon(Icons.star, color: Colors.amber, size: 18),
        ),
      ],
    );
  }
}
