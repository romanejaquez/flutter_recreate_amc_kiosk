import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:flutter/material.dart';

class AmcRoundButton extends StatelessWidget {

  final String label;
  final Function onTap;
  bool isBackButton = false;

  AmcRoundButton({ 
    this.label, 
    this.isBackButton = false,
    @required this.onTap });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: 200,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 30, bottom: 30, left: 60, right: 60),
              decoration: BoxDecoration(
                color: this.isBackButton ? AmcColors.MAIN_GREY : AmcColors.MAIN_RED,
                borderRadius: this.isBackButton ? BorderRadius.only(
                  topRight: const Radius.circular(60), 
                  bottomRight: const Radius.circular(60),
                  topLeft: const Radius.circular(0),
                  bottomLeft: const Radius.circular(0)
                ) : BorderRadius.circular(60),
                border: Border(
                  top: BorderSide(
                    color: this.isBackButton ? AmcColors.MAIN_DARKGREY : AmcColors.MAIN_DARK_RED,
                    width: 12
                  ),
                  bottom: BorderSide(
                    color: this.isBackButton ? AmcColors.MAIN_DARKGREY : AmcColors.MAIN_DARK_RED,
                    width: 12
                  ),
                  right: BorderSide(
                    color: this.isBackButton ? AmcColors.MAIN_DARKGREY : AmcColors.MAIN_DARK_RED,
                    width: 12
                  ),
                  left: BorderSide(
                    width: 12,
                    color: this.isBackButton ? AmcColors.MAIN_DARKGREY : AmcColors.MAIN_DARK_RED
                  )
                )
              ),
              child: Text(this.label,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
                )
              )
            )
          ],
        ),
      )
    );
  }

}