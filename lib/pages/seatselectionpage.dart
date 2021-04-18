import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/services/seatselection.service.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:amc_flutter_app/widgets/amcroundbutton.dart';
import 'package:amc_flutter_app/widgets/seatselectiongrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeatSelectionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AmcHeader(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
                  margin: EdgeInsets.only(bottom: 20),
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
                SeatSelectionGrid()
              ],
            )
          ),
          AmcBottomBar(
            optionalButton: Consumer<SeatSelectionService>(
              builder: (context, seatService, child) {
                return seatService.selectedSeats.length > 0 ? AmcRoundButton(
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