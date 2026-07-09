import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  String amount = '0';

  void _appendDigit(String digit) {
    setState(() {
      if (amount == '0') {
        amount = digit;
      } else {
        amount += digit;
      }
    });
  }

  void _addDecimal() {
    setState(() {
      if (!amount.contains('.')) {
        amount += '.';
      }
    });
  }

  void _clearAmount() {
    setState(() {
      amount = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    final quickAmounts = ['0 %', '10 %', '25 %', '50 %', '75 %', '100 %'];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Withdraw INR',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Enter Amount in INR',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                Text(
                  '₹$amount',
                  style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Min ₹100 - Max ₹10,00000',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Available Balance:  ₹10,000',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: quickAmounts
                    .map(
                      (label) => Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.grey,
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(label),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (context, index) {
                  final label = index < 9 ? '${index + 1}' : index == 9 ? '.' : index == 10 ? '0' : '⌫';
                  return SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        if (label == '⌫') {
                          _clearAmount();
                        } else if (label == '.') {
                          _addDecimal();
                        } else {
                          _appendDigit(label);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100],
                        foregroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(label, style: const TextStyle(fontSize: 20)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0063F5),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Withdraw INR',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}