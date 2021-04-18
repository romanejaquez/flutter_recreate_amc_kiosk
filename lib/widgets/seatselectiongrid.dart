import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/models/movieseat.model.dart';
import 'package:amc_flutter_app/services/seatselection.service.dart';
import 'package:amc_flutter_app/widgets/movieseatwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeatSelectionGrid extends StatelessWidget {
  @override
  Widget build(Object context) {
    
    return Consumer<SeatSelectionService>(
      builder: (context, seatSelection, child) {

        List<Widget> seatWidgets = [];

        for(int i = 0; i < seatSelection.auditorium.seats.length; i++) {
          List<MovieSeat> seatRow = seatSelection.auditorium.seats[i];
          List<Widget> seatRowWidgets = [];

          seatRow.forEach((MovieSeat seat) {
            seatRowWidgets.add(
              MovieSeatWidget(
                seat: seat,
                seatRowIndex: i,
              )
            );
          });

          seatWidgets.add(
            Container(
              margin: EdgeInsets.only(
                top: i == seatSelection.auditorium.accessibleRow ? 50 : 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    child: Text(seatRow.first.seatLabel.characters.first,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)
                    ),
                  ),
                  SizedBox(width: 40),
                  Row(children: seatRowWidgets),
                  SizedBox(width: 40),
                  Container(
                    width: 40,
                    child: Text(seatRow.first.seatLabel.characters.first,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)
                    ),
                  ),
                ]
              ),
            )
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 50, right: 50, bottom: 50),
              color: Colors.grey[500],
              child: Text('SCREEN',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20)
              )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: seatWidgets
            )
          ]
        );
      }
    );
  }
}