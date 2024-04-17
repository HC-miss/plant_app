import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: const DetailBody(),
      bottomNavigationBar: const DetailBottomBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: kTextColor),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

class DetailBottomBar extends StatelessWidget {
  const DetailBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 调整为内置高度
      height: kBottomNavigationBarHeight,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: FilledButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.transparent;
                    },
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Description",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
