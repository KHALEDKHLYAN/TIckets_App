import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/serch/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/serch/widgets/app_ticket_tab.dart';
import 'package:ticket_app/screens/serch/widgets/find_tickets.dart';

class SerchScreen extends StatelessWidget {
  const SerchScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
