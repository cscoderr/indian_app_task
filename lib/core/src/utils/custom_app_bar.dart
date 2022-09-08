import 'package:flutter/material.dart';
import 'package:indian_app/core/core.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Image.asset(
              AppImages.notification,
              width: 30,
              height: 30,
            ),
            const Spacer(),
            Image.asset(
              AppImages.logo,
              height: 40,
            ),
            const Spacer(),
            Image.asset(
              AppImages.menu,
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
