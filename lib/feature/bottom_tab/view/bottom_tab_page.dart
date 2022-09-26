import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../widgets/app_bottom_navigation.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({super.key});

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {
  int currentBottomTabIndex = 0;
  PageController pageController = PageController();

  void onPageChanged(int page) {
    pageController.jumpToPage(page);

    setState(() {
      currentBottomTabIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (context.screenWidth > kMobileBreakpoint)
          ? null
          : const CustomAppBar(),
      body: Row(
        children: [
          if (context.screenWidth > kMobileBreakpoint)
            NavigationRail(
              onDestinationSelected: onPageChanged,
              backgroundColor: AppColor.backgroundColor,
              extended: true,
              leading: const DrawerHeader(
                child: Text(
                  'Main Menu',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              destinations: bottomTabItems
                  .asMap()
                  .entries
                  .map(
                    (e) => NavigationRailDestination(
                      icon: currentBottomTabIndex == e.key
                          ? Image.asset(e.value.activeIcon)
                          : Image.asset(e.value.icon),
                      label: Text(
                        e.value.title,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              selectedIndex: currentBottomTabIndex,
              selectedIconTheme: const IconThemeData(color: AppColor.primary),
              useIndicator: false,
            ),
          if (context.screenWidth > kMobileBreakpoint)
            const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentBottomTabIndex = value;
                });
              },
              children: bottomTabPages.map((e) => e).toList(),
            ),
          )
        ],
      ),
      bottomNavigationBar: context.screenWidth > kMobileBreakpoint
          ? null
          : AppBottomNavigation(
              onTap: onPageChanged,
              currentIndex: currentBottomTabIndex,
              items: bottomTabItems
                  .asMap()
                  .entries
                  .map(
                    (e) => AppBottomNavigationItem(
                      icon: e.value.icon,
                      activeIcon: e.value.activeIcon,
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
