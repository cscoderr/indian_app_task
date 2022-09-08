import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/core.dart';
import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (context.screenWidth > kMobileBreakpoint)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.logo,
                      height: 40,
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImages.notification,
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      AppImages.menu,
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: context.screenWidth,
              child: Swiper(
                scrollDirection: Axis.horizontal,
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Image.asset(AppImages.banner, fit: BoxFit.cover),
                  );
                },
                itemCount: 3,
                control: const SwiperControl(),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: (context.screenWidth > kMobileBreakpoint)
                  ? const EdgeInsets.symmetric(horizontal: 70)
                  : const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Text(
                    'Hot Game',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 10),
                  const HotGameListView(),
                  const SizedBox(height: 20),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImages.wallet,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'KEN',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: AppColor.primaryText,
                                        ),
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    AppImages.crown,
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '7',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: AppColor.primary,
                                        ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '\$',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.primaryText,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: '12212133',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: AppColor.primary,
                                          ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 2,
                        decoration: BoxDecoration(
                          color: AppColor.primary.withOpacity(0.5),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                          flex: 3,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(AppImages.speaker),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  ':Dragon Boat Festival holiday!holiday!holiday!holiday!Dragon Boat Festival holiday!estival holiday!',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.primaryText,
                                      ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ).animate().scale(duration: 200.ms),
                  const SizedBox(height: 15),
                  if (context.screenWidth < kMobileBreakpoint)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CategoryTabBar(),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              const BannerCard(
                                image: AppImages.banner4,
                                isMaintained: true,
                              ).animate().fade(duration: 500.ms),
                              const SizedBox(height: 20),
                              const BannerCard(image: AppImages.banner1)
                                  .animate()
                                  .fade(duration: (500 + 20).ms),
                              const SizedBox(height: 20),
                              const BannerCard(image: AppImages.banner2)
                                  .animate()
                                  .fade(duration: (500 + 40).ms),
                              const SizedBox(height: 20),
                              const BannerCard(image: AppImages.banner4)
                                  .animate()
                                  .fade(duration: (500 + 60).ms),
                            ],
                          ),
                        ),
                      ],
                    )
                  else
                    Column(
                      children: [
                        const CategoryTabBar(),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 120,
                          child: Row(
                            children: [
                              Expanded(
                                child: const BannerCard(
                                  image: AppImages.banner4,
                                  isMaintained: true,
                                ).animate().fade(duration: 500.ms),
                              ),
                              Expanded(
                                child:
                                    const BannerCard(image: AppImages.banner1)
                                        .animate()
                                        .fade(duration: (500 + 20).ms),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 120,
                          child: Row(
                            children: [
                              Expanded(
                                child: const BannerCard(
                                  image: AppImages.banner2,
                                ).animate().fade(duration: (500 + 40).ms),
                              ),
                              Expanded(
                                child:
                                    const BannerCard(image: AppImages.banner4)
                                        .animate()
                                        .fade(duration: (500 + 60).ms),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
