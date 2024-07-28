import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: "Airline Tickets",
            tabBorder: false,
            tabColor: false,
          ),
          AppTabs(
            tabText: "Hotels",
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = '',
      this.tabBorder = false,
      this.tabColor = false});

  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: tabBorder == false
            ? BorderRadius.horizontal(left: Radius.circular(50))
            : BorderRadius.horizontal(right: Radius.circular(50)),
        color: tabColor == false ? Colors.white : Colors.transparent,
      ),
      width: size.width * .44,
      child: Center(child: Text(tabText)),
    );
  }
}
