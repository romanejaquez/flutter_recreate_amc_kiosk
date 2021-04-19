import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/models/movieseat.model.dart';
import 'package:amc_flutter_app/services/seatselection.service.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedSeatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TicketOrderingService ticketService = Provider.of<TicketOrderingService>(context, listen: false);

    return Consumer<SeatSelectionService>(
      builder: (context, seatSelection, child) {

        List<Widget> selectedSeatsWidgets = [];

        seatSelection.selectedSeats.forEach((MovieSeat seat) {
          selectedSeatsWidgets.add(
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AmcColors.MAIN_PINK
              ),
              width: 50,
              height: 50,
              child: Text(seat.seatLabel,
                style: TextStyle(color: Colors.white, fontSize: 20)
              )
            )
          );
        });

        return Visibility(
          visible: selectedSeatsWidgets.length > 0,
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 40),
            decoration: BoxDecoration(
              color: AmcColors.MAIN_PINK.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              children: [
                Text('Selected Seats ' + '(' + '${selectedSeatsWidgets.length} of ${ticketService.getTotalNumberOfTickets()})',
                  style: TextStyle(color: Colors.white, fontSize: 20)
                ),
                SizedBox(width: 100),
                Row(children: selectedSeatsWidgets)
              ],
            )
          )
        );
      }
    );
  }

}