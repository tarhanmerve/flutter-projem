import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      width: double.infinity,
      height: double.infinity,
      child: const Center(
        child: Text(
          'Favoriler',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
