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
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppImages.lang,
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 10),
                          const Text('हिंदी'),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppImages.facebook,
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text('Facebook'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppImages.instagram,
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text('Instagram'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppImages.youtube,
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text('Youtube'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppImages.telegram,
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text('Telegram'),
                    ],
                  ),
                ),
              ],
              child: Image.asset(
                AppImages.menu,
                width: 30,
                height: 30,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
