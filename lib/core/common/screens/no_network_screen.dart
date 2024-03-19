import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/core/styles/images/app_images.dart';

class NpNetworkScreen extends StatelessWidget {
  const NpNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppsImages.noNetwork,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
