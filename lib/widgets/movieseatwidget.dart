import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/models/movieseat.model.dart';
import 'package:amc_flutter_app/services/seatselection.service.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieSeatWidget extends StatelessWidget {

  MovieSeat seat;
  int seatRowIndex;

  MovieSeatWidget({ this.seat, this.seatRowIndex });
  
  @override
  Widget build(BuildContext context) {
    
    SeatSelectionService seatSelection = Provider.of<SeatSelectionService>(context, listen: false);
    TicketOrderingService ticketService = Provider.of<TicketOrderingService>(context, listen: false);
    
    Color seatColor = seat.isSelected ? AmcColors.MAIN_PINK :
      (seatRowIndex == seatSelection.auditorium.accessibleRow ? AmcColors.ACCESSIBLESEAT : AmcColors.MAIN_DARK_RED);

    return GestureDetector(
      onTap: () {
        if (seatSelection.selectedSeats.length < ticketService.getTotalNumberOfTickets()) {
          seatSelection.selectSeat(seat);
        }
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: seatColor,
                width: 15,
                height: 40,
                margin: EdgeInsets.only(right: 1)
              ),
              Container(
                alignment: Alignment.center,
                color: seatColor,
                width: 35,
                height: 35,
                child: seatRowIndex == seatSelection.auditorium.accessibleRow ?
                Icon(Icons.accessible, color: Colors.white) : 
                Text(seat.seatLabel,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)
                ) 
              ),
              Container(
                color: seatColor,
                width: 15,
                height: 40,
                margin: EdgeInsets.only(left: 1)
              )
            ],
          )
      ),
    );
  }

}