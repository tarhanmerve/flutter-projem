import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      width: double.infinity,
      height: double.infinity,
      child: const Center(
        child: Text(
          'Ayarlar',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
