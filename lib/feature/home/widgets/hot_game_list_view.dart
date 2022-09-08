import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/core.dart';
import '../home.dart';

class HotGameListView extends StatelessWidget {
  const HotGameListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HotGameCard(
            image: hotGames[index].image,
          ).animate().scale(duration: (200 * index).ms);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: hotGames.length,
      ),
    );
  }
}
