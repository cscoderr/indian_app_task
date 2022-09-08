import 'package:indian_app/core/core.dart';

class Category {
  final String image;
  final String activeImage;
  final String title;

  Category({
    required this.image,
    required this.activeImage,
    required this.title,
  });
}

final categories = <Category>[
  Category(
    image: AppImages.used,
    activeImage: AppImages.usedFill,
    title: 'Used',
  ),
  Category(
    image: AppImages.live,
    activeImage: AppImages.liveFill,
    title: 'Live',
  ),
  Category(
    image: AppImages.sport,
    activeImage: AppImages.sportFill,
    title: 'Sport',
  ),
  Category(
    image: AppImages.lottery,
    activeImage: AppImages.lotteryFill,
    title: 'Lottery',
  ),
  Category(
    image: AppImages.poker,
    activeImage: AppImages.pokerFill,
    title: 'Poker',
  ),
  Category(
    image: AppImages.game,
    activeImage: AppImages.gameFill,
    title: 'Game',
  ),
];
