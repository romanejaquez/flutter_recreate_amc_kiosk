import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/helpers/utils.dart';
import 'package:amc_flutter_app/models/ticket.model.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TicketSelectionTypes extends StatelessWidget {
  @override
  Widget build(Object context) {
    
    TicketOrderingService ticketService = Provider.of<TicketOrderingService>(context, listen: false);
    ticketService.createOrder();

    return Consumer<TicketOrderingService>(
      builder: (context, tService, child) {

        List<Widget> ticketRows = [];
        tService.ticketOrder.tickets.forEach((TicketModel ticketModel) {
          ticketRows.add(
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 15),
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(60)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${Utils.getStringFromTicketType(ticketModel.type)}',
                    style: TextStyle(color: Colors.white, fontSize: 30)
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              tService.addTicketsToOrder(ticketModel.type, ticketModel.amount - 1);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: ticketModel.amount == 0 ? Colors.grey.withOpacity(0.5) : AmcColors.MAIN_PINK,
                              child: Icon(
                                Icons.remove, size: 50, color: Colors.white,
                              )
                            ),
                          )
                        )
                      ),
                      Container(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${ticketModel.amount.toString()}',
                              style: TextStyle(color: Colors.white, fontSize: 30)
                            ),
                            Text('\$${ticketModel.price.toString()}',
                              style: TextStyle(color: Colors.white, fontSize: 20)
                            )
                          ],
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              tService.addTicketsToOrder(ticketModel.type, ticketModel.amount + 1);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: ticketModel.amount == 20 ? Colors.grey.withOpacity(0.5) : AmcColors.MAIN_PINK,
                              child: Icon(
                                Icons.add, size: 50, color: Colors.white,
                              )
                            ),
                          )
                        )
                      ),
                    ],
                  )
                ],
              )
            )
          );
        });        
      
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(children: ticketRows),
            SizedBox(height: 20),
          ]
        );
      }
    );
  }
}