import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/constants.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconCard(icon: "assets/icons/sun.svg"),
                    IconCard(icon: "assets/icons/icon_2.svg"),
                    IconCard(icon: "assets/icons/icon_3.svg"),
                    IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
