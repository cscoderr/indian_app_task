import 'dart:io';

import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({
    Key? key,
    required this.items,
    this.currentIndex = 0,
    this.onTap,
  }) : super(key: key);

  final List<AppBottomNavigationItem> items;
  final int currentIndex;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Builder(builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomAppBar(
            elevation: 2,
            clipBehavior: Clip.antiAlias,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items
                  .asMap()
                  .entries
                  .map(
                    (e) => Expanded(
                      child: InkWell(
                        onTap: () {
                          onTap?.call(e.key);
                        },
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Padding(
                          padding: Platform.isIOS
                              ? const EdgeInsets.only(top: 20.0, bottom: 0)
                              : const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                currentIndex == e.key
                                    ? e.value.activeIcon
                                    : e.value.icon,
                                width: 24,
                                height: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      }),
    );
  }

  Widget _bttomNavigationTile() {
    return Column(
      children: [
        Image.asset(''),
        const Text(''),
      ],
    );
  }
}

class AppBottomNavigationItem {
  AppBottomNavigationItem({
    required this.icon,
    required this.activeIcon,
  });
  final String icon;
  final String activeIcon;
}
