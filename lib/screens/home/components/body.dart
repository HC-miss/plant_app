import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';

import 'featured_plants.dart';
import 'header_with_search_box.dart';
import 'title_with_more_btn.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          const RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
