import 'package:flutter/material.dart';
import 'package:store_app/core/styles/images/app_images.dart';

class PageUnderBuild extends StatelessWidget {
  const PageUnderBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppsImages.pageUnderBuild,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
