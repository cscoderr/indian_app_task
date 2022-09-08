import 'package:flutter/material.dart';
import 'package:indian_app/feature/bottom_tab/bottom_tab.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indian App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
        // primarySwatch: Colors.blue,
      ),
      home: const BottomTabPage(),
    );
  }
}
