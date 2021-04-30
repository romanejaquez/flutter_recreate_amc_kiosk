import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/services/seatselection.service.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:amc_flutter_app/widgets/amcroundbutton.dart';
import 'package:amc_flutter_app/widgets/seatselectiongrid.dart';
import 'package:amc_flutter_app/widgets/selectedmovieheader.dart';
import 'package:amc_flutter_app/widgets/subtotalwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeatSelectionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    TicketOrderingService ticketService = Provider.of<TicketOrderingService>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // header
          AmcHeader(),

          // whole middle section
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // selected movie header (reusable)
                  SelectedMovieHeader(),

                  // seat selection container
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Icon(Icons.event_seat, color: AmcColors.MAIN_RED, size: 40),
                        SizedBox(width: 10),
                        Text('Select your seats',
                          style: TextStyle(color: Colors.white, fontSize: 30)
                        )
                      ]
                    ),
                  ),

                  // seat selection grid widget
                  SeatSelectionGrid(),

                  // subtotal widget (reusable)
                  SubTotalWidget()
                ],
              ),
            )
          ),

          // custom bottom nav bar, with another injected button widget
          // for navigating to checkout page
          AmcBottomBar(
            optionalButton: Consumer<SeatSelectionService>(
              builder: (context, seatService, child) {
                return seatService.selectedSeats.length == ticketService.getTotalNumberOfTickets() ? AmcRoundButton(
                  label: 'CHECKOUT',
                  onTap: () {
                    // proceed to the seats selection page
                    Navigator.of(context).pushNamed('/checkout');
                  }) : SizedBox(width: 0);
              }
          ))
        ]
      )
    );
  }


}