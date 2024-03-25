import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';
import 'package:store_app/core/language/app_localization_setup.dart';
import 'package:store_app/core/routes/app_routes.dart';
import 'package:store_app/core/styles/themes/app_themes.dart';

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
              theme: themeLight(),
              locale: const Locale('ar'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              builder: (context, widget) {
                return GestureDetector(
                  onTap: () {
                    //to enable when the user clicks on the screen and
                    //the screen loses focus when the user clicks on the screen and
                    //the screen loses focus when the user clicks on the screen
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Scaffold(
                    body: Builder(
                      builder: (context) {
                        ConnectivityController.instance.init();
                        return widget!;
                      },
                    ),
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
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
