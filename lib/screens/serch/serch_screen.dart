import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/serch/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/serch/widgets/app_ticket_tab.dart';
import 'package:ticket_app/screens/serch/widgets/find_tickets.dart';

class SerchScreen extends StatelessWidget {
  const SerchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "What are\nYou Looking For?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          AppTicketTabs(),
          SizedBox(height: 25),
          AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Departure",
          ),
          SizedBox(height: 20),
          AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Arrival",
          ),
          SizedBox(height: 25),
          FindTickets(),
          SizedBox(height: 40),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
            func: () => Navigator.pushNamed(context, "/all_tickets"),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * .42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(AppMedia.planeSit),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "20% discount on early bookings. Don't miss this flight.",
                      style: AppStyles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                
                children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: size.width * .44,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor Survey",
                        style: AppStyles.headLineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Take Survey about our services and get discount",
                        style: AppStyles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                )
              ])
            ],
          )
        ],
      ),
    );
  }
}
