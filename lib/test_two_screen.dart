import 'package:flutter/material.dart';
import 'package:store_app/core/routes/app_routes.dart';

class TestTowScreen extends StatelessWidget {
  const TestTowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text(
          'Test Two Screen ',
        ),
      ),
    );
  }
}
