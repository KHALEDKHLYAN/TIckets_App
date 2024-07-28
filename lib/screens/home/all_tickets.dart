import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((SingleTicket) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TicketView(ticket: SingleTicket, wholeScreen:true)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
