import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    Key? key,
    this.height = 120,
    required this.image,
    this.isMaintained = false,
  }) : super(key: key);

  final double height;
  final String image;
  final bool isMaintained;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: isMaintained ? 0.5 : 1,
          child: Container(
            height: height,
            width: double.infinity,
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: FittedBox(
              fit: BoxFit.fill,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
        ),
        if (isMaintained)
          Positioned(
            top: 40,
            right: 40,
            left: 40,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text(
                'Maintained',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          )
      ],
    );
  }
}
