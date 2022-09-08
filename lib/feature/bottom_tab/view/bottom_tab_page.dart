import 'package:flutter/material.dart';

import '../../../core/core.dart';

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
          : BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  currentBottomTabIndex = index;
                });
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
                  .map(
                    (e) => BottomNavigationBarItem(
                        icon: currentBottomTabIndex == e.key
                            ? Image.asset(e.value.activeIcon)
                            : Image.asset(e.value.icon),
                        label: ''),
                  )
                  .toList(),
            ),
    );
  }
}
