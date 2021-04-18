import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:amc_flutter_app/widgets/amclogomain.dart';
import 'package:flutter/material.dart';

class AmcHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(top: -200,
          child: Transform.scale(
            scale: 1.25, 
            child: AmcLogoMain(showOnTop: true)
            )
          ),
          Positioned(
            left: 0,
            top: 0,
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
          Positioned(
            right: 0,
            top: 0,
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