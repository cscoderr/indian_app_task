import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:indian_app/core/core.dart';
import 'package:indian_app/feature/home/home.dart';

class CategoryTabBar extends StatefulWidget {
  const CategoryTabBar({
    super.key,
    required this.tabChange,
  });

  final ValueChanged<int> tabChange;

  @override
  State<CategoryTabBar> createState() => _CategoryTabBarState();
}

class _CategoryTabBarState extends State<CategoryTabBar> {
  Category currentCategory = categories.first;

  void setCurrentCategory(Category category) {
    setState(() {
      currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DefaultTabController(
        length: categories.length,
        initialIndex: categories.indexOf(currentCategory),
        child: context.screenWidth > kMobileBreakpoint
            ? Row(
                children: categories
                    .map(
                      (e) => Row(
                        children: [
                          CategoryCard(
                            onTap: () {
                              setCurrentCategory(e);
                              DefaultTabController.of(context)?.animateTo(
                                categories.indexOf(currentCategory),
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            image: currentCategory.title == e.title
                                ? e.activeImage
                                : e.image,
                          ).animate().scale(
                              duration: (200 +
                                      (categories.indexOf(currentCategory)) *
                                          categories.indexOf(currentCategory))
                                  .ms),
                          const SizedBox(width: 20),
                        ],
                      ),
                    )
                    .toList(),
              )
            : Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final e = categories[index];
                    return CategoryCard(
                      onTap: () {
                        setCurrentCategory(e);
                        widget.tabChange(index);
                        DefaultTabController.of(context)?.animateTo(
                          categories.indexOf(currentCategory),
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      },
                      image: currentCategory.title == e.title
                          ? e.activeImage
                          : e.image,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemCount: categories.length,
                  shrinkWrap: true,
                ),
              ),
      );
    });
  }
}
