import 'package:flutter/material.dart';
import 'package:indian_app/core/core.dart';
import 'package:indian_app/feature/home/home.dart';

class CategoryItemListVew extends StatelessWidget {
  const CategoryItemListVew({Key? key, required this.items}) : super(key: key);

  final List<CategoryItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final item = items[index];
        return BannerCard(
          image: item.image!,
          isMaintained: item.isMaintained,
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemCount: items.length,
    );
  }
}
