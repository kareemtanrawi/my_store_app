import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';

import 'package:flutter/material.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ),
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  },
                ),
              );
            },
            home: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Store App',
                ),
              ),
            ),
          );
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: NpNetworkScreen(),
          );
        }
      },
    );
  }
}
