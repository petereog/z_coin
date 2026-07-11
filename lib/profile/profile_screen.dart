import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      _ProfileOption(
        icon: Icons.history,
        title: 'History',
        onTap: () => _showMessage(context, 'History coming soon'),
      ),
      _ProfileOption(
        icon: Icons.account_balance,
        title: 'Bank Details',
        onTap: () => _showMessage(context, 'Bank details coming soon'),
      ),
      _ProfileOption(
        icon: Icons.notifications_outlined,
        title: 'Notifications',
        onTap: () => _showMessage(context, 'Notifications coming soon'),
      ),
      _ProfileOption(
        icon: Icons.lock_outline,
        title: 'Security',
        onTap: () => _showMessage(context, 'Security settings coming soon'),
      ),
      _ProfileOption(
        icon: Icons.help_outline,
        title: 'Help and Support',
        onTap: () => _showMessage(context, 'Support center coming soon'),
      ),
      _ProfileOption(
        icon: Icons.description_outlined,
        title: 'Terms and Conditions',
        onTap: () => _showMessage(context, 'Terms and conditions coming soon'),
      ),
      _ProfileOption(
        icon: Icons.logout,
        title: 'Logout',
        isDestructive: true,
        onTap: () => _showMessage(context, 'Logout action will be added soon'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF0063F5), Color(0xFF4A90E2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white24,
                    child: Icon(Icons.person, size: 34, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Agilan Senthil',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'agilansenthilkumar@gmail.com',
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '+91 9444977118',
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Account Settings',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: List.generate(options.length, (index) {
                  final option = options[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          option.icon,
                          color: option.isDestructive ? Colors.red : const Color(0xFF0063F5),
                        ),
                        title: Text(
                          option.title,
                          style: TextStyle(
                            color: option.isDestructive ? Colors.red : Colors.black87,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                        onTap: option.onTap,
                      ),
                      if (index < options.length - 1)
                        const Divider(height: 1, indent: 16, endIndent: 16),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

class _ProfileOption {
  const _ProfileOption({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isDestructive = false,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isDestructive;
}
