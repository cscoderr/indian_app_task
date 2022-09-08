import 'package:flutter/material.dart';

import '../../../feature/chat/chat.dart';
import '../../../feature/gift/gift.dart';
import '../../../feature/home/home.dart';
import '../../../feature/profile/profile.dart';
import '../../../feature/transaction/transaction.dart';
import '../../core.dart';

final bottomTabItems = <TabItems>[
  TabItems(
    title: 'Home',
    icon: AppImages.home,
    activeIcon: AppImages.homeFill,
  ),
  TabItems(
    title: 'Gift',
    icon: AppImages.gift,
    activeIcon: AppImages.giftFill,
  ),
  TabItems(
    title: 'Transaction',
    icon: AppImages.money,
    activeIcon: AppImages.moneyFill,
  ),
  TabItems(
    title: 'Chat',
    icon: AppImages.chat,
    activeIcon: AppImages.chatFill,
  ),
  TabItems(
    title: 'Profile',
    icon: AppImages.profile,
    activeIcon: AppImages.profileFill,
  ),
];

final bottomTabPages = <Widget>[
  const HomePage(),
  const GiftPage(),
  const TransactionPage(),
  const ChatPage(),
  const ProfilePage(),
];

final hotGames = <HotGame>[
  HotGame(image: AppImages.hotSlider5),
  HotGame(image: AppImages.hotSlider4),
  HotGame(image: AppImages.hotSlider3),
  HotGame(image: AppImages.hotSlider2),
  HotGame(image: AppImages.hotSlider1),
];
