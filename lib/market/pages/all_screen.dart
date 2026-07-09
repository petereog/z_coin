import 'package:flutter/material.dart';
import 'package:z_coin/market/pages/market_coin_card.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

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
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Band Protocol',
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
        SizedBox(height: 12.0),
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
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Dai',
          symbol: 'DAI',
          price: '₹1,000.00',
          change: '+0.50%',
          imagePath: 'assets/images/ebc24b163bf1f58a9732a9a1d2faa5b2141b041d754ddc2260c5e76edfed261e.png',
          chartPath: 'assets/images/Vector 2.png',
          isPositive: true,
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Neo',
          symbol: 'Neo',
          price: '₹8,940.00',
          change: '+0.88%',
          imagePath: 'assets/images/1ed16ffeb4701876b71d3228421ded24391ffd9ba0780b5e88ea62766617186c.png',
          chartPath: 'assets/images/Vector 2.png',
          isPositive: true,
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Uniswap',
          symbol: 'UNI',
          price: '₹1,420.00',
          change: '-1.16%',
          imagePath: 'assets/images/aafc2f5fff21664213e2a5a2c6e31aa055f277d1069b16745d54f84c0e94f1f3.png',
          chartPath: 'assets/images/Vector 4.png',
          isPositive: false,
        ),
        SizedBox(height: 12.0),
        MarketCoinCard(
          name: 'Binance coin',
          symbol: 'BNB',
          price: '₹34,560.00',
          change: '+2.14%',
          imagePath: 'assets/images/1597d628dd19b7885433a2ac2d7de6ad196c519aeab4bfe679706aacbf1df78a.png',
          chartPath: 'assets/images/Vector 2.png',
          isPositive: true,
        ),
      ],
    );
  }
}
