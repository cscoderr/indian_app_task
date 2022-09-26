import 'package:indian_app/core/core.dart';

class CategoryItem {
  final String? image;
  final bool isMaintained;

  CategoryItem({
    this.image,
    this.isMaintained = false,
  });
}

final usedCategory = <CategoryItem>[
  CategoryItem(image: AppImages.banner4, isMaintained: true),
  CategoryItem(image: AppImages.banner1),
  CategoryItem(image: AppImages.banner2),
  CategoryItem(image: AppImages.banner4),
];

final liveCategory = <CategoryItem>[
  CategoryItem(image: AppImages.banner2, isMaintained: true),
  CategoryItem(image: AppImages.banner1),
  CategoryItem(image: AppImages.banner4),
  CategoryItem(image: AppImages.banner2),
];

final sportCategory = <CategoryItem>[
  CategoryItem(image: AppImages.banner1, isMaintained: true),
  CategoryItem(image: AppImages.banner2),
  CategoryItem(image: AppImages.banner1),
  CategoryItem(image: AppImages.banner4),
];

final lotteryCategory = <CategoryItem>[
  CategoryItem(image: AppImages.banner4, isMaintained: true),
  CategoryItem(image: AppImages.banner2),
  CategoryItem(image: AppImages.banner1),
  CategoryItem(image: AppImages.banner4),
];

final pokerCategory = <CategoryItem>[
  CategoryItem(
    image: AppImages.banner4,
  ),
  CategoryItem(image: AppImages.banner2),
  CategoryItem(image: AppImages.banner1),
  CategoryItem(image: AppImages.banner4),
];

final gameCategory = <CategoryItem>[
  CategoryItem(
    image: AppImages.banner2,
  ),
  CategoryItem(image: AppImages.banner2),
  CategoryItem(image: AppImages.banner1),
  CategoryItem(image: AppImages.banner4),
];

final categoryItems = [
  usedCategory,
  liveCategory,
  sportCategory,
  lotteryCategory,
  pokerCategory,
  gameCategory,
];
