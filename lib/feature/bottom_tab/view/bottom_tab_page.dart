import 'package:flutter/material.dart';

import '../../../core/core.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({super.key});

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {
  final currentBottomTabIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text('Hello there'),
          ],
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: currentBottomTabIndex,
          builder: (context, _, __) {
            return BottomNavigationBar(
                currentIndex: currentBottomTabIndex.value,
                onTap: (index) {
                  currentBottomTabIndex.value = index;
                },
                unselectedIconTheme: Theme.of(context).iconTheme.copyWith(
                      color: Colors.red,
                    ),
                selectedIconTheme: Theme.of(context).iconTheme.copyWith(
                      color: Colors.red,
                    ),
                items: bottomTabItems
                    .asMap()
                    .entries
                    .map((e) => BottomNavigationBarItem(
                        icon: currentBottomTabIndex.value == e.key
                            ? Image.asset(e.value.activeIcon)
                            : Image.asset(e.value.icon),
                        label: ''))
                    .toList());
          }),
    );
  }
}
