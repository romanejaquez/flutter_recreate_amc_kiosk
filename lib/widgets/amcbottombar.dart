import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:amc_flutter_app/widgets/amcroundbutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AmcBottomBar extends StatelessWidget {

  Widget optionalButton;

  AmcBottomBar({ this.optionalButton });

  @override
  Widget build(BuildContext context) {

    TicketOrderingService ticketOrderingService = Provider.of<TicketOrderingService>(context, listen: false);
    
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AmcRoundButton(
              isBackButton: true,
              label: 'BACK',
              onTap: () {
                Navigator.pop(context);
              }
            ),
            Row(
              children: [
                this.optionalButton != null ? this.optionalButton : SizedBox(width: 0),
                SizedBox(width: 20),
                AmcRoundButton(
                label: 'QUIT',
                onTap: () {
                  ticketOrderingService.resetOrder();
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                }
              ),
              ],
            )
          ],
        )
      );
  }

}