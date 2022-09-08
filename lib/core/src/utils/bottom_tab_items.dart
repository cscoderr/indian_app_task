import 'package:flutter/material.dart';
import 'package:indian_app/core/core.dart';
import 'package:indian_app/feature/chat/chat.dart';
import 'package:indian_app/feature/gift/gift.dart';
import 'package:indian_app/feature/home/home.dart';
import 'package:indian_app/feature/profile/profile.dart';
import 'package:indian_app/feature/transaction/transaction.dart';

import '../models/model.dart';

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
    title: 'Money',
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
