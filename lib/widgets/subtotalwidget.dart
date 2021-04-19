import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubTotalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TicketOrderingService>(
      builder: (context, tService, child) {
        return Container(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 40, right: 40),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(60)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SUBTOTAL',
                    style: TextStyle(color: Colors.white, fontSize: 30)
                  ),
                  Text('${tService.getTotalNumberOfTickets()} Tickets Selected',
                    style: TextStyle(color: Colors.white, fontSize: 30)
                  )
                ],
              ),
              Text('\$${tService.getTotalPriceOfTickets().toStringAsFixed(2)}',
                style: TextStyle(color: Colors.white, fontSize: 50)
              )
            ]
          )
        );
      }
    );
  }

}