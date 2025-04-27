import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      width: double.infinity,
      height: double.infinity,
      child: const Center(
        child: Text(
          'Ana Sayfa',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
