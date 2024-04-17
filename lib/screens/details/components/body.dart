import 'package:flutter/material.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
        ],
      ),
    );
  }
}
