import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppStyles.primaryColor,
      ),
      child: Column(children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // color: AppStyles.primaryColor,
            image: DecorationImage(
              image: AssetImage(AppMedia.hotelRoom)
            ),
          ),
        ),
      ]),
    );
  }
}
