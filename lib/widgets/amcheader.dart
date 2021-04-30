import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:amc_flutter_app/widgets/amclogomain.dart';
import 'package:flutter/material.dart';

class AmcHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        // do not clip the items on this stack (for the glowing effect)
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [

          // scale and offset the top logo
          Positioned(top: -200,
          child: Transform.scale(
            scale: 1.25, 
            child: AmcLogoMain(showOnTop: true)
            )
          ),

          // left payment icons
          Positioned(
            left: 20,
            top: 20,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(AmcIcon.googleWallet, color: Colors.grey, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(AmcIcon.paypal, color: Colors.grey, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(AmcIcon.applePay, color: Colors.grey, size: 40),
                ),
              ],
            )
          ),
          
          // right payment icons
          Positioned(
            right: 20,
            top: 20,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(AmcIcon.amex, color: Colors.grey, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(AmcIcon.masterCard, color: Colors.grey, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(AmcIcon.visa, color: Colors.grey, size: 40),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}