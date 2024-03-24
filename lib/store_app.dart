import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';

import 'package:flutter/material.dart';
import 'package:store_app/core/styles/fonts/font_family_helper.dart';
import 'package:store_app/core/styles/fonts/font_weight_helper.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
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
                  centerTitle: true,
                  title: const Text(
                    'Store App',
                  ),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Text Fonts',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'كريم محمود ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),

                      //!new
                      Text(
                        'Text Fonts',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.poppinsEnglish,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                      Text(
                        'كريم محمود ',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.cairoArabic,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                    ],
                  ),
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
