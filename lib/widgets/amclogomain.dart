import 'dart:async';

import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:flutter/material.dart';

class AmcLogoMain extends StatefulWidget {

  bool isBlurred = false;
  final bool showOnTop;

  AmcLogoMain({ this.showOnTop = false });

  @override
  _AmcLogoMainState createState() => _AmcLogoMainState();
}

class _AmcLogoMainState extends State<AmcLogoMain> {

  late Timer logoTimer;

  @override
  Widget build(BuildContext context) {
    
    logoTimer = new Timer(const Duration(milliseconds: 1000), () {
      if (mounted) {
        setState(() {
          widget.isBlurred = !widget.isBlurred;
        });
      }
    });

    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        color: AmcColors.MAIN_RED,
        borderRadius: BorderRadius.circular(150),
        boxShadow: [
          BoxShadow(
            color: AmcColors.MAIN_RED,
            blurRadius: widget.isBlurred ? 20 : 100,
            offset: Offset.zero
          )
        ]
      ),
      child: Container(
        margin: EdgeInsets.only(top: widget.showOnTop ? 150 : 0),
        child: Icon(AmcIcon.amcLogo, size: widget.showOnTop ? 150: 250, color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    logoTimer.cancel();
  }
}