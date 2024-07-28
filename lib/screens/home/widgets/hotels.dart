import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  final Map <String, dynamic> hotel;
  
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppStyles.primaryColor,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppStyles.primaryColor,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(
                  'assets/images/${hotel['image']}'
                  )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              hotel["place"],
              style:
                  AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),
            )),
        SizedBox(
          height: 5,
        ),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              hotel["destination"],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            )),
        SizedBox(
          height: 5,
        ),
        Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night",
              style:
                  AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),
            ))
      ]),
    );
  }
}
