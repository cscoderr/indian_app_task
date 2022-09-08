import 'package:flutter/material.dart';
import 'package:indian_app/core/src/utils/color.dart';
import 'package:indian_app/feature/bottom_tab/bottom_tab.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indian App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        backgroundColor: AppColor.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.backgroundColor,
          elevation: 1,
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColor.secondaryText,
          ),
        ),
        primaryColor: AppColor.primary,
        // primaryTextTheme: const TextTheme(
        //   titleSmall: TextStyle(
        //     fontSize: 16,
        //     fontWeight: FontWeight.w600,
        //     color: AppColor.primaryText,
        //   ),
        // ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColor.bottomNavigationColor,
        ),
        scaffoldBackgroundColor: AppColor.backgroundColor,
      ),
      home: const BottomTabPage(),
    );
  }
}
