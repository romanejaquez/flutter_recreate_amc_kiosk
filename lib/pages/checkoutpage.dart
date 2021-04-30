import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amccirclebutton.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:amc_flutter_app/widgets/checkouttimer.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              child: Column(
                children: [

                  // timer widget
                  CheckoutTimer(
                    seconds: 10,
                    onTimerDone: () {
                      Navigator.of(context).popUntil((route) => route.settings.name == '/home');
                    },
                  ),

                  // friendly content
                  Text('Order will be cancelled in a few moments.\nPlease use the PIN Pad to complete your order',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25)
                  ),
                  Container(
                    margin: EdgeInsets.all(40),
                    child: Icon(AmcIcon.handCard, color: Colors.white, size: 250),
                  ),
                  Text('To pay with credit card or AMC Gift Card,\nfollow directions on the PIN Pad to complete transaction',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25)
                  ),
                  SizedBox(height: 50),

                  // cancel custom circle button
                  AmcCircleButton(
                    label: 'Cancel',
                    icon: Icons.clear,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            )
          ),

          // common bottom nav bar
          AmcBottomBar()
        ]
      )
    );
  }

}